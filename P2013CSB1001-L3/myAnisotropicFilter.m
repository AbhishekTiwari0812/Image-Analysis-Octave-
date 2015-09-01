function [o]=myAnisotropicFilter(inImg,Lambda,Sigma,NIter)
	img_size=size(inImg);
	old=zeros(img_size(1),img_size(2));
	new=zeros(img_size(1),img_size(2));
	old(:,:)=inImg(:,:);	
	uint8(old);
	uint8(new);
	for N=1:NIter
		for x=2:img_size(1)-1
			for y=2:img_size(2)-1
				delta_n=old(x-1,y)-old(x,y);
				delta_s=old(x+1,y)-old(x,y);
				delta_e=old(x,y+1)-old(x,y);
				delta_w=old(x,y-1)-old(x,y);
				a=-1*(delta_n * delta_n)/(Sigma * Sigma);
				Cn=e^a;
				Cs=e^((-1)*(delta_s*delta_s)/(Sigma*Sigma));
				Ce=e^((-1)*(delta_e*delta_e)/(Sigma*Sigma));
				Cw=e^((-1)*delta_w^2/Sigma^2);
				#new(x,y)=old(x,y)+Lambda*(Cn*delta_n+Cs*delta_s+Ce*delta_e+Cw*delta_w);
				new(x,y)=old(x,y)*(1-Lambda*(Cn+Cs+Ce+Cw))+Lambda*(Cn*old(x-1,y)+Cs*old(x+1,y)+Ce*old(x,y+1)+Cw*old(x,y-1));		
			end
		end
		uint8(old);
		uint8(new);
		old(:,:)=new(:,:);
		
	end 	
	o=new;

end
