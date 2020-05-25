up <- read.dta13("dataset_access_uttarpradesh.dta")

### first main graph 

lpg_use <-  up$m4_q103_lpg
lpg_use <- as.character(lpg_use)
lpg_use[lpg_use=="Yes"] <- 1
lpg_use[lpg_use=="No"] <- 0
lpg_use <- as.numeric(lpg_use)

decision <- up$m1_q38_decision_maker

decision_lpg <- data.frame(decision, lpg_use)
names(decision_lpg) <- c("decision_maker", "lpg")

glm0 <- glm(lpg_use ~ as.factor(decision), data = decision_lpg, family = binomial(link = "logit"))

predicted_glm <- predict(glm0, newdata = decision_lpg, type = "response", interval = "confidence", se = TRUE)

predict <- predicted_glm$fit
pred <- predict

g <- ggplot(decision_lpg, aes(x=decision, y=pred)) + geom_point(alpha=.1, size=5, col="blue") + geom_line() + geom_text(aes(label=round(pred,digits=3)),hjust=-.3, vjust=-.3) +
  geom_errorbar(aes(x=decision, ymin=pred-predicted_glm$se.fit, ymax=pred+predicted_glm$se.fit), width=0.1, colour="blue", alpha=0.9, size=.4) + labs(title="", x="Decision maker types", y="Probability of using LPG")


### second main graph

dec <- up$m1_q38_decision_maker_other
dec[dec==""] <- "Male, Female, or Both"
dec <- data.frame(dec)
other_lpg <- data.frame(dec, lpg_use)

glm2 <- glm(lpg_use ~ dec, data = other_lpg, family = binomial(link = "logit"))

predicted_glm1 <- predict(glm2, newdata = other_lpg, type = "response", interval = "confidence", se = TRUE)

predict1 <- predicted_glm1$fit

g1 <- ggplot(other_lpg, aes(x=dec, y=predict1)) + geom_point(alpha=.1, size=5, col="blue") + geom_line() + geom_text(aes(label=round(predict1,digits=3)),hjust=-.3, vjust=-.3) +
  geom_errorbar(aes(x=dec, ymin=predict1-predicted_glm1$se.fit, ymax=predict1+predicted_glm1$se.fit), width=0.1, colour="blue", alpha=0.9, size=.4) + labs(title="", x="Decision maker types", y="Probability of using LPG")

summary(glm2)