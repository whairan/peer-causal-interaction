# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.destroy_all
Drug.destroy_all
Disease.destroy_all
Trial.destroy_all
Phase.destroy_all
Status.destroy_all
DrugDisease.destroy_all
Stock.destroy_all
StockType.destroy_all
StockMarket.destroy_all

#STATUSES
Status.create(name:"Recruiting")
Status.create(name:"Approved")
Status.create(name:"Ongoing")
Status.create(name:"Active")
Status.create(name:"Completed")
Status.create(name:"Complete")
Status.create(name:"Terminated")
Status.create(name:"Recruiting (Invitation Only)")
Status.create(name:"Not Yet Recruiting")
Status.create(name:"Active, Not Recruiting")
Status.create(name:"Completed (Has Results)")
Status.create(name:"Suspended")
Status.create(name:"Enrolling (By Invitation)")


#DRUGS
Drug.find_or_create_by(name:"NUPLAZID™ (pimavanserin)", about:"a selective serotonin inverse agonist (SSIA) preferentially targeting 5-HT2A receptors that play an important role in psychosis")
Drug.find_or_create_by(name:"A4250", about:" highly potent and selective inhibitor of the ileal bile acid transporter (IBAT, sometimes also referred to as the apical sodium dependent bile acid transporter (ASBT)) that acts locally in the gut resulting in a reduced risk of systemic side effects and undesirable drug-drug interactions")
Drug.find_or_create_by(name:"Elobixibat", about:"IBAT inhibitor")
Drug.find_or_create_by(name:"A3384", about:"proprietary formulation designed to deliver a drug known as cholestyramine directly to the colon")
Drug.find_or_create_by(name:"VOCLOSPORIN", about:"calcineurin inhibitor. Immunosuppressant")
Drug.find_or_create_by(name:"BTI-320", about:"BTI-320 is a non-systemic, non-toxic, chewable drug candidate for prevention of diabetes and its complications. BTI-320 inhibits the enzymes that release glucose from complex carbohydrate in foods during digestion, reducing the amount of available glucose absorbed through the intestine")
Drug.find_or_create_by(name:"Resunab (JBT-101)", about:"")
Drug.find_or_create_by(name:"Vicinium", about:"")
Drug.find_or_create_by(name:"RSV F Vaccine", about:"respiratory syncytial virus fusion (F) protein nanoparticle vaccine candidate")
Drug.find_or_create_by(name:"REGN1979", about:"CD20/CD3 Antibody")
Drug.find_or_create_by(name:"REGN1979 + REGN2810", about:"CD20/CD3 Antibody + PD-1 Antibody")
Drug.find_or_create_by(name:"REGN1908-1909", about:"Feld1 Antibody")
Drug.find_or_create_by(name:"REGN3470-3471-3479", about:"Antibody to Ebola virus")
Drug.find_or_create_by(name:"REGN2477", about:"Activin A Antibody")
Drug.find_or_create_by(name:"REGN3500", about:"In collaboration ith Sanofi")
Drug.find_or_create_by(name:"SARILUMAB", about:"IL-6R Antibody. In collaboration with Sanofi")
Drug.find_or_create_by(name:"DUPILUMAB", about:"IL-4R Antibody. In collaboration with Sanofi")
