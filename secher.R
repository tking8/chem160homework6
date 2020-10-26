secher<-read.table("secher.txt",header=T)
# Birth weight vs. Biparietal diameter
model_1<-lm(bwt~bpd, data=secher)
sum.model_1<-summary(model_1)
R2_1<-sum.model_1$r.squared
f<-sum.model_1$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2_1, p.value)
cat(output)

intercept<-model_1$coefficients[1]
slope<-model_1$coefficients[2]
output<-sprintf("slope=%f intercept=%f",slope, intercept)
cat(output)

png("bwt_bpd.png")
plot(bwt~bpd, data=secher)
abline(model_1)
dev.off()

# Birth weight vs. Abdominal diameter
model_2<-lm(bwt~ad, data=secher)
sum.model_2<-summary(model_2)
R2_2<-sum.model_2$r.squared
f<-sum.model_2$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2_2, p.value)
cat(output)

intercept<-model_2$coefficients[1]
slope<-model_2$coefficients[2]
output<-sprintf("slope=%f intercept=%f",slope, intercept)
cat(output)

png("bwt_ad.png")
plot(bwt~ad, data=secher)
abline(model_2)
dev.off()

# Birth weight vs. Biparietal diameter + Abdominal diameter
model_3<-lm(bwt~bpd+ad, data=secher)
sum.model_3<-summary(model_3)
R2_3<-sum.model_3$r.squared
f<-sum.model_3$fstatistic
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value=%f", R2_3, p.value)
cat(output)
