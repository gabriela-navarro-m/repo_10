#en stata es y x1 x2 y ahora es y ~ x1+x2
#lm() es  OLS y glm() es con otras cosas tipo predeterminado es logit pero se cambia el family por la necesaria
library(gapminder)
#bota coeficientes pero no errores estándares o demás- para eso es summary

lm(lifeExp~gdpPercap , data = gapminder) %>% summary() 
# lm_robust() para errores robustos
#para ver distriución de residuos 
# ols= lm(--)
data=gapminder %>% subset(gdpPercap<50000)
data$lifeExp_gorro= predict(object=ols, newdata=data) #multiplicar cada coeficiente por cada variable para conseguir y gorro
data
#linea de ajuste es con geom_smooth(method=lm) se puede cambiar el metodo por otros como lowess
#para sacarlo es igual que stata o sea outreg(ols) donde ols es la regersion tambien funciona con stargazer 
#felm(formula | variable de efectos fijos de individuo o año (separada por + si son varias)| variable instrumental | clusterizando errores o ponerle peso a errores y dividirlo por + si son varias) feols() para hacer efectos fijos 