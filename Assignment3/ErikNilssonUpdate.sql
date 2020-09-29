-- update the NewProductPrices table so that all discount percents that were 30 percent, are now 28 percent

update NewProductPrices
set discount_percent = 28
where discount_percent = 30;