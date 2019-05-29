# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

Story.destroy_all
User.destroy_all

guest = User.create(username: 'guest', email: 'guest@EtherTechna.com', password: 'password')

user_01 = User.create(username: 'oliver', email: 'oliver@student.com', password: 'password')
user_02 = User.create(username: 'conley', email: 'conley@student.com', password: 'password')
user_03 = User.create(username: 'bryce', email: 'bryce@student.com', password: 'password')
user_04 = User.create(username: 'mashu', email: 'mashu@student.com', password: 'password')
user_05 = User.create(username: 'soonmi', email: 'soonmi@student.com', password: 'password')
user_06 = User.create(username: 'carly', email: 'carly@student.com', password: 'password')
user_07 = User.create(username: 'gordy', email: 'gordy@student.com', password: 'password')
user_08 = User.create(username: 'rich', email: 'rich@student.com', password: 'password')
user_09 = User.create(username: 'david', email: 'david@student.com', password: 'password')
user_10 = User.create(username: 'jasmine', email: 'jasmine@student.com', password: 'password')
user_11 = User.create(username: 'lisa', email: 'lisa@student.com', password: 'password')
user_12 = User.create(username: 'john-michael', email: 'john-michael@student.com', password: 'password')

author_1 = User.create(username: 'Harold Speed', email: 'harold@gutenberg.org', password: 'password')
author_2 = User.create(username: 'Plato', email: 'plato@gutenberg.org', password: 'password')
author_3 = User.create(username: 'Napoleon Hill', email: 'napoleon@roblewis.com', password: 'password')


story_1 = Story.create(
  title: 'THE PRACTICE & SCIENCE OF DRAWING',
  lead_in: 'Before you learn to draw, you must learn how to see.',
  category: 'Art',
  body: "<p>It is necessary to say something about Vision in the first
  place, if we are to have any grasp of the idea of form.</p>
  <p>An act of vision is not so simple a matter as the student who
  asked her master if she should “paint nature as she saw nature”
  would seem to have thought. And his answer, “Yes, madam, provided
  you don’t see nature as you paint nature,” expressed the first
  difficulty the student of painting has to face: the difficulty of
  learning to see.</p>
  <p>Let us roughly examine what we know of vision. Science tells us
  that all objects are made visible to us by means of light; and that
  white light, by which we see things in what may be called their
  normal aspect, is composed of all the colours of the solar
  spectrum, as may be seen in a rainbow; a phenomenon caused, as
  everybody knows, by the sun’s rays being split up into their
  component parts.</p>
  <p>This light travels in straight lines and, striking objects
  before us, is reflected in all directions. Some of these rays
  passing through a point situated behind the lenses of the eye,
  strike the retina. The multiplication of these rays on the retina
  produces a picture of whatever is before the eye, such as can be
  seen on the ground glass at the back of a photographer’s camera,
  or on the table of a camera obscura, both of which instruments are
  constructed roughly on the same principle as the human eye.</p>",
  author_id: User.find_by(username: 'Harold Speed').id
)
file_1 = open('https://s3-us-west-1.amazonaws.com/ethertechna-seeds/pawel-czerwinski-1612026-unsplash.jpg')
story_1.image.attach(io: file_1, filename: 'pawel-czerwinski-1612026-unsplash.jpg')
story_1.update(created_at: Time.parse("August 27, 2008, 12:00am UTC +0").strftime("%a, %d %b %Y %k:%M:%S %Z %z"))

story_2 = Story.create(
  title: 'THE REPUBLIC: BOOK I',
  lead_in: 'Polemarchus, the unbending',
  category: 'Philosophy',
  body: "<p>
  I went down yesterday to the Piraeus with Glaucon the son of Ariston, that
  I might offer up my prayers to the goddess (Bendis, the Thracian
  Artemis.); and also because I wanted to see in what manner they would
  celebrate the festival, which was a new thing. I was delighted with the
  procession of the inhabitants; but that of the Thracians was equally, if
  not more, beautiful. When we had finished our prayers and viewed the
  spectacle, we turned in the direction of the city; and at that instant
  Polemarchus the son of Cephalus chanced to catch sight of us from a
  distance as we were starting on our way home, and told his servant to run
  and bid us wait for him. The servant took hold of me by the cloak behind,
  and said: Polemarchus desires you to wait.
</p>
<p>
  I turned round, and asked him where his master was.
</p>
<p>
  There he is, said the youth, coming after you, if you will only wait.
</p>
<p>
  Certainly we will, said Glaucon; and in a few minutes Polemarchus
  appeared, and with him Adeimantus, Glaucon‘s brother, Niceratus the son of
  Nicias, and several others who had been at the procession.
</p>
<p>
  Polemarchus said to me: I perceive, Socrates, that you and your companion
  are already on your way to the city.
</p>
<p>
  You are not far wrong, I said.
</p>
<p>
  But do you see, he rejoined, how many we are?
</p>
<p>
  Of course.
</p>
<p>
  And are you stronger than all these? for if not, you will have to remain
  where you are.
</p>
<p>
  May there not be the alternative, I said, that we may persuade you to let
  us go?
</p>
<p>
  But can you persuade us, if we refuse to listen to you? he said.
</p>
<p>
  Certainly not, replied Glaucon.
</p>",
  author_id: User.find_by(username: 'Plato').id
)
file_2 = open('https://s3-us-west-1.amazonaws.com/ethertechna-seeds/Polemarchus.jpg')
story_2.image.attach(io: file_2, filename: 'Polemarchus.jpg')
story_2.update(created_at: Time.parse("December 6, 2004, 12:00am UTC +0").strftime("%a, %d %b %Y %k:%M:%S %Z %z"))

story_3 = Story.create(
  title: 'THE REPUBLIC: BOOK II',
  lead_in: 'Glaucon, the persistent',
  category: 'Philosophy',
  body: "<p>
  With these words I was thinking that I had made an end of the discussion;
  but the end, in truth, proved to be only a beginning. For Glaucon, who is
  always the most pugnacious of men, was dissatisfied at Thrasymachus‘
  retirement; he wanted to have the battle out. So he said to me: Socrates,
  do you wish really to persuade us, or only to seem to have persuaded us,
  that to be just is always better than to be unjust?
</p>
<p>
  I should wish really to persuade you, I replied, if I could.
</p>
<p>
  Then you certainly have not succeeded. Let me ask you now:—How would
  you arrange goods—are there not some which we welcome for their own
  sakes, and independently of their consequences, as, for example, harmless
  pleasures and enjoyments, which delight us at the time, although nothing
  follows from them?
</p>
<p>
  I agree in thinking that there is such a class, I replied.
</p>
<p>
  Is there not also a second class of goods, such as knowledge, sight,
  health, which are desirable not only in themselves, but also for their
  results?
</p>
<p>
  Certainly, I said.
</p>
<p>
  And would you not recognize a third class, such as gymnastic, and the care
  of the sick, and the physician‘s art; also the various ways of
  money-making—these do us good but we regard them as disagreeable;
  and no one would choose them for their own sakes, but only for the sake of
  some reward or result which flows from them?
</p>
<p>
  There is, I said, this third class also. But why do you ask?
</p>
<p>
  Because I want to know in which of the three classes you would place
  justice?
</p>
<p>
  In the highest class, I replied,—among those goods which he who
  would be happy desires both for their own sake and for the sake of their
  results.
</p>
<p>
  Then the many are of another mind; they think that justice is to be
  reckoned in the troublesome class, among goods which are to be pursued for
  the sake of rewards and of reputation, but in themselves are disagreeable
  and rather to be avoided.
</p>
<p>
  I know, I said, that this is their manner of thinking, and that this was
  the thesis which Thrasymachus was maintaining just now, when he censured
  justice and praised injustice. But I am too stupid to be convinced by him.
</p>",
  author_id: User.find_by(username: 'Plato').id
)
file_3 = open('https://s3-us-west-1.amazonaws.com/ethertechna-seeds/Glaucon.jpg')
story_3.image.attach(io: file_3, filename: 'Glaucon.jpg')
story_3.update(created_at: Time.parse("December 6, 2004, 12:00am UTC +0").strftime("%a, %d %b %Y %k:%M:%S %Z %z"))

story_4 = Story.create(
  title: 'THE REPUBLIC: BOOK III',
  lead_in: 'Socrates, the unpersuaded',
  category: 'Philosophy',
  body: "<p>
  Such then, I said, are our principles of theology—some tales are to
  be told, and others are not to be told to our disciples from their youth
  upwards, if we mean them to honour the gods and their parents, and to
  value friendship with one another.
</p>
<p>
  Yes; and I think that our principles are right, he said.
</p>
<p>
  But if they are to be courageous, must they not learn other lessons
  besides these, and lessons of such a kind as will take away the fear of
  death? Can any man be courageous who has the fear of death in him?
</p>
<p>
  Certainly not, he said.
</p>
<p>
  And can he be fearless of death, or will he choose death in battle rather
  than defeat and slavery, who believes the world below to be real and
  terrible?
</p>
<p>
  Impossible.
</p>
<p>
  Then we must assume a control over the narrators of this class of tales as
  well as over the others, and beg them not simply to revile but rather to
  commend the world below, intimating to them that their descriptions are
  untrue, and will do harm to our future warriors.
</p>
<p>
  That will be our duty, he said.
</p>
<p>
  Then, I said, we shall have to obliterate many obnoxious passages,
  beginning with the verses,
</p>
<p>
  ‘I would rather be a serf on the land of a poor and portionless man than
  rule over all the dead who have come to nought.‘
</p>
<p>
  We must also expunge the verse, which tells us how Pluto feared,
</p>
<p>
  ‘Lest the mansions grim and squalid which the gods abhor should be seen
  both of mortals and immortals.‘
</p>
<p>
  And again:—
</p>
<p>
  ‘O heavens! verily in the house of Hades there is soul and ghostly form
  but no mind at all!‘
</p>
<p>
  Again of Tiresias:—
</p>
<p>
  ‘(To him even after death did Persephone grant mind,) that he alone should
  be wise; but the other souls are flitting shades.‘
</p>
<p>
  Again:—
</p>
<p>
  ‘The soul flying from the limbs had gone to Hades, lamenting her fate,
  leaving manhood and youth.‘
</p>
<p>
  Again:—
</p>
<p>
  ‘And the soul, with shrilling cry, passed like smoke beneath the earth.‘
</p>
<p>
  And,—
</p>
<p>
  ‘As bats in hollow of mystic cavern, whenever any of them has dropped out
  of the string and falls from the rock, fly shrilling and cling to one
  another, so did they with shrilling cry hold together as they moved.‘
</p>
<p>
  And we must beg Homer and the other poets not to be angry if we strike out
  these and similar passages, not because they are unpoetical, or
  unattractive to the popular ear, but because the greater the poetical
  charm of them, the less are they meet for the ears of boys and men who are
  meant to be free, and who should fear slavery more than death.
</p>
<p>
  Undoubtedly.
</p>",
  author_id: User.find_by(username: 'Plato').id
)
file_4 = open('https://s3-us-west-1.amazonaws.com/ethertechna-seeds/Socrates.jpg')
story_4.image.attach(io: file_4, filename: 'Socrates.jpg')
story_4.update(created_at: Time.parse("December 6, 2004, 12:00am UTC +0").strftime("%a, %d %b %Y %k:%M:%S %Z %z"))

story_5 = Story.create(
  title: 'Think & Grow Rich: Chapter 6',
  lead_in: 'Imagination: The Workshop of the Mind',
  category: 'Mental Health',
  body: "<p>The imagination is literally the workshop wherein are fashioned all plans created by man. The impulse, the DESIRE, is given shape, form, and ACTION through the aid of the imaginative faculty of the mind.</p>
  <p>It has been said that man can create anything which he can imagine.</p>
  <p>Of all the ages of civilization, this is the most favorable for the development of the imagination, because it is an age of rapid change. On every hand one may contact stimuli which develop the imagination.</p>
  <p>Through the aid of his imaginative faculty, man has discovered, and harnessed, more of Nature's forces during the past fifty years than during the entire history of the human race, previous to that time. He has conquered the air so completely, that the birds are a poor match for him in flying. He has harnessed the ether, and made it serve as a means of instantaneous communication with any part of the world. He has analyzed, and weighed the sun at a distance of millions of miles, and has determined, through the aid of IMAGINATION, the elements of which it consists. He has discovered that his own brain is both a broadcasting, and a receiving station for the vibration of thought, and he is beginning now to learn how to make practical use of this discovery. He has increased the speed of locomotion, until he may now travel at a speed of more than three hundred miles an hour. The time will soon come when a man may breakfast in New York, and lunch in San Francisco.</p>
  <p>MAN'S ONLY LIMITATION, within reason, LIES IN HIS DEVELOPMENT AND USE OF HIS IMAGINATION. He has not yet reached the apex of development in the use of his imaginative faculty. He has merely discovered that he has an imagination, and has commenced to use it in a very elementary way.</p>
  ",
  author_id: User.find_by(username: 'Napoleon Hill').id
)
file_5 = open('https://s3-us-west-1.amazonaws.com/ethertechna-seeds/markus-spiske-1611750-unsplash.jpg')
story_5.image.attach(io: file_5, filename: 'markus-spiske-1611750-unsplash.jpg')
story_5.update(created_at: Time.parse("December 1, 2008, 12:00am UTC +0").strftime("%a, %d %b %Y %k:%M:%S %Z %z"))