test_that("mymaxlik", {
  logbin=function(x,param) log(dbinom(x,prob=param,size=20))
  p=mymaxlik(x=c(3,3,4,3,4,5,5,4),param=seq(0,1,length=1000),lfun=logbin,xlab=expression(Pi))
  expect_equal(round(p$parami, 2),0.19)
})
