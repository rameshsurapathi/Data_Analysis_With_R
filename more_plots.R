
getwd()

data(diamonds)
diamonds

qplot(x=price,data=diamonds,xlab='price',ylab='Diamonds Count',binwidth=500,color=I('black')
      ,fill=I('orange'))+scale_x_continuous(limits=c(0,15000),breaks = seq(0,15000,500))+facet_wrap(~price,ncol=5)

ggsave('result.png')

summary(diamonds$price)

subset(diamonds,diamonds$price<500)

by(diamonds$price,diamonds$cut,median)


qplot(x = diamonds$price, y=diamonds$cut,geom='boxplot')

qplot(x = log10(price/carat), data = diamonds,binwidth=0.1,fill=I('orange')) +scale_x_continuous(limits = c(2,4))
+facet_wrap(~cut)




