Bridge.destroy_all
Fretboard.destroy_all
GuitarString.destroy_all
BodyShape.destroy_all
Guitar.destroy_all


bridge1 = Bridge.create(:name => 'stainless steel', :description => 'I think this also only applies to electric guitars', :price => 10)
bridge2 = Bridge.create(:name => 'copper & brass', :description => 'I think this only applies to electric guitars', :price => 10)
bridge3 = Bridge.create(:name => 'Acoustic Top Loading Bridge', :description => "Top Loading Acoustic Guitar Bridge, Rosewood, No Finish. 6 and 5/8 x 1 and 9/16 inches, 3/8 inch tall, with 2 and 1/8 inch strong spacing." , :price => 10, :image => 'http://www.allparts.com/thumbnail.asp?file=/assets/images/thumbs/GB-2866-0R0_thumbnail.jpg&maxx=150&maxy=0')
bridge4 = Bridge.create(:name => 'Rosewood Nickel Compensated', :description => 'Rosewood Compensated Bridge With Base for Arched-Top Guitar', :price => 24)
bridge5 = Bridge.create(:name => 'Ebony Nickel Compensated', :description => 'Ebony Compensated Bridge With Base for Arched-Top Guitar', :price => 30)

fretboard1 = Fretboard.create(:name => 'standard', :description => 'I am not sure what to put here, it\'s the standard?', :price => 15, :image => 'http://www.etguitars.com/images/customguitars/necks/Galaxy%20fretboard.JPG')

guitarString1 = GuitarString.create(:name => 'Augustine Black', :description => 'Some sort of string', :price => 10)
guitarString2 = GuitarString.create(:name => 'Augustine Blue', :description => 'More string of some sort' , :price => 11)
guitarString3 = GuitarString.create(:name => 'Medium Phosphor Bronze', :description => 'Sounds good?', :price => 6)
guitarString4 = GuitarString.create(:name => 'Chromies Flatwound Light 12-52', :description => 'Something about being light?', :price => 23)
guitarString5 = GuitarString.create(:name => 'Neon green', :description =>  'It really helps you stand out', :price => 20)

guitarBody1 = BodyShape.create(:name => "0", :description => "1854, you say? This Martin designation is at the top end (size-wise) of what you might call a parlour guitar, though there’s no set standard for that term. It usually has a 12-fret-to-body design and produces a focused tone with plenty of mid-range punch.

BODY LENGTH: 19 1/8 (inches)
MAX DEPTH: 4 1/16
MAX WIDTH: 13 1/2", :price => 250)
guitarBody2 = BodyShape.create(:name => "00", :description => "Slightly bigger than Size 0, the 00 (grand concert) came along in 1877 and remains in production to this day. The 1934 14-fret variant has a thinner waist and looks more like a smaller 000. Expect prominent yet sweet mids from a quality example.

BODY LENGTH: 19 5/8 (12-fret)
MAX DEPTH: 4 1/16
MAX WIDTH: 14 5/16", :price => 275)
guitarBody3 = BodyShape.create(:name => '000/OM', :description => "Martin set the standard for ‘folk’ size too. These days, the 000 (auditorium) has a 24.9-inch scale length, while the OM (Orchestra Model) has 25.4. The Martin 000-28 built for banjoist Perry Bechtel in 1929 was the first ever 14-fret flat-top acoustic.

BODY LENGTH: 19 3/18 (14-fret)
MAX DEPTH: 4 1/8
MAX WIDTH: 15", :price => 285)
guitarBody4 = BodyShape.create(:name => 'Grand Auditorium', :description => "This term is used today by Taylor to describe its Style 14 body, designed by Bob Taylor in 1994. It’s wider than a Martin dreadnought across the lower bout, almost as deep, but with a more pinched waist and forward bout. Almost always a CE (cutaway electro).

BODY LENGTH: 20
MAX DEPTH: 4 5/8
MAX WIDTH: 16", :price => 55)
guitarBody = BodyShape.create(:name => 'Dreadnought', :description => "The daddy: introduced by Martin initially with more rounded shoulders and 12 frets to the body, it changed to the form we know now in 1934. It’s become synonymous with the very term ‘acoustic guitar’ and you’ll hear these in pretty much every kind of music since the thirties, from early bluegrass to the most modern pop. Sound great as 12-fretters, too.

BODY LENGTH: 20 (14-fret)
MAX DEPTH: 4 7/8
MAX WIDTH: 15 5/8", :price => 555)
guitarBody5 = BodyShape.create(:name => 'Round-shoulder dreadnought', :description => "Typified by the Gibson J-45 and J-50, this shape is descended from Gibson Jumbos of the 1930s (though don’t confuse them with the Super Jumbos, right). The dimensions – although varied slightly over the years – put them in dreadnought territory. J-45s/50s/Southern Jumbos have a 24.75-inch scale; the original Advanced Jumbos were 25.5.

BODY LENGTH: 20
MAX DEPTH: 4 7/8
MAX WIDTH: 16", :price => 88)




guitar1 = Guitar.create(:right_hand => true, :scale_length => 23.5, :nut_width => 41, :nut_material => 'TUSQ', :body_color => '#bada55', :pickguard => false)

guitar1.fretboard = fretboard1
guitar1.body_shape = guitarBody5
guitar1.bridge = bridge1
guitar1.guitar_string= guitarString3








