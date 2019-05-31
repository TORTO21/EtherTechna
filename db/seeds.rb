# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

# TEMPLATE
# story_02_ = Story.create(
#   title: '',
#   lead_in: '',
#   category: '',
#   body: "
#   ",
#   author_id: User.find_by(username: '').id
# )
# file_02_ = open('')
# story_02_.image.attach(io: file_02_, filename: '')
# story_02_.update(created_at: Time.parse(", 12:00am UTC +0"))





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

User.create(
  username: 'Harold Speed',
  email: 'haroldspeed@gutenberg.org',
  password: 'password',
  description: 'Our moments of peace are, I think, always associated with some form of beauty, of this spark of harmony within corresponding with some infinite source without.'
) 
User.create(
  username: 'Plato',
  email: 'plato@gutenberg.org',
  password: 'password',
  description: 'We can easily forgive a child who is afraid of the dark; the real tragedy of life is when men are afraid of the light.'
) 
User.create(
  username: 'Napoleon Hill',
  email: 'napoleonhill@roblewis.com',
  password: 'password',
  description: 'Think twice before you speak, because your words and influence will plant the seed of either success or failure in the mind of another.'
) 
User.create(
  username: 'various',
  email: 'various@economist.com',
  password: 'password',
  description: 'who can speak for me?  Perhaps the editor?'
) 
User.create(
  username: 'William Thorp',
  email: 'williamthorp@economist.com',
  password: 'password',
  description: '“An economist is an expert who will know tomorrow why the things he predicted yesterday didn’t happen today.” ― Laurence J. Peter'
) 
User.create(
  username: 'D T MacDougal',
  email: 'dtmacdougal@popsci.com',
  password: 'password',
  description: '“The curious mind embraces science; the gifted and sensitive, the arts; the practical, business; the leftover becomes an economist” ― Nassim Nicholas Taleb,'
) 
User.create(
  username: 'J De Morgan',
  email: 'jdemorgan@popsci.com',
  password: 'password',
  description: '“Science is a way of thinking much more than it is a body of knowledge.” – Carl Sagan'
) 
User.create(
  username: 'Charles Wyllys Elliot',
  email: 'charleswyllyselliot@theinternational.com',
  password: 'password',
  description: '“It is a far, far better thing that I do, than I have ever done; it is a far, far better rest I go to than I have ever known.” — A Tale of Two Cities, Charles Dickens'
) 
User.create(
  username: 'R H Stoddard',
  email: 'rhstoddard@theinternational.com',
  password: 'password',
  description: '“All we have to decide is what to do with the time that is given us.” — The Fellowship of the Ring, J.R.R. Tolkein'
) 
User.create(
  username: 'W H Stiles',
  email: 'honwhstiles@theinternational.com',
  password: 'password',
  description: '“You have brains in your head. You have feet in your shoes. You can steer yourself any direction you choose. You’re on your own. And you know what you know. And YOU are the one who’ll decide where to go…” — Oh, the Places You’ll Go! Dr Seuss'
) 
User.create(
  username: 'various2',
  email: 'various@theinternational.com',
  password: 'password',
  description: '“It matters not what someone is born, but what they grow to be.” — Harry Potter and the Goblet of Fire, J.K. Rowling'
) 
User.create(
  username: 'William N Brown',
  email: 'williamnbrown@gutenberg.org',
  password: 'password',
  description: '“ARMOR, n. The kind of clothing worn by a man whose tailor is a blacksmith.” ― Ambrose Bierce, The Unabridged Devil’s Dictionary'
)
User.create(
  username: 'Brandpoint',
  email: 'bpt@brandpointcontent.com',
  password: 'password',
  description: 'Since 1996, Brandpoint has been providing high-quality content to editors, ad directors, designers, publishers and bloggers. Whether you have a print publication or are working digitally, Brandpoint’s mission is to make your job easy.'
)


story_001 = Story.create(
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
  constructed roughly on the same principle as the human eye.</p>
  <p>These rays of light when reflected from an object, and again
  when passing through the atmosphere, undergo certain modifications.
  Should the object be a red one, the yellow, green, and blue rays,
  all, in fact, except the red rays, are absorbed by the object,
  while the red is allowed to escape. These red rays striking the
  retina produce certain effects which convey to our consciousness
  the sensation of red, and we say ”That is a red object.” But there
  may be particles of moisture or dust in the air that will modify
  the red rays so that by the time they reach the eye they may be
  somewhat different. This modification is naturally most effective
  when a large amount of atmosphere has to be passed through, and in
  things very distant the colour of the natural object is often
  entirely lost, to be replaced by atmospheric colours, as we see in
  distant mountains when the air is not perfectly clear. But we must
  not stray into the fascinating province of colour.</p>
  <p>What chiefly concerns us here is the fact that the pictures on
  our retinas are flat, of two dimensions, the same as the canvas on
  which we paint. If you examine these visual pictures without any
  prejudice, as one may with a camera obscura, you will see that they
  are composed of masses of colour in infinite variety and
  complexity, of different shapes and gradations, and with many
  varieties of edges; giving to the eye the illusion of nature with
  actual depths and distances, although one knows all the time that
  it is a flat table on which one is looking.</p>
  <p>Seeing then that our eyes have only flat pictures containing
  two-dimension information about the objective world, from
  whence is this knowledge of distance and the solidity of things?
  How do we <i>see</i> the third dimension, the depth and thickness,
  by means of flat pictures of two dimensions?</p>
  <p>The power to judge distance is due principally to our possessing
  two eyes situated in slightly different positions, from which we
  get two views of objects, and also to the power possessed by the
  eyes of focussing at different distances, others being out of focus
  for the time being. In a picture the eyes can only focus at one
  distance (the distance the eye is from the plane of the picture
  when you are looking at it), and this is one of the chief causes of
  the perennial difficulty in painting backgrounds. In nature they
  are out of focus when one is looking at an object, but in a
  painting the background is necessarily on the same focal plane as
  the object. Numerous are the devices resorted to by painters to
  overcome this difficulty, but they do not concern us here.</p>
  <p>The fact that we have two flat pictures on our two retinas to
  help us, and that we can focus at different planes, would not
  suffice to account for our knowledge of the solidity and shape of
  the objective world, were these senses not associated with another
  sense all important in ideas of form, <b>the sense of
  touch</b>.</p>
  <p>This sense is very highly developed in us, and the earlier
  period of our existence is largely given over to feeling for the
  objective world outside ourselves. Who has not watched the little
  baby hands feeling for everything within reach, and without its
  reach, for the matter of that; for the infant has no knowledge yet
  of what is and what is not within its reach. Who has not offered
  some bright object to a young child and
  watched its clumsy attempts to feel for it, almost as clumsy at
  first as if it were blind, as it has not yet learned to focus
  distances. And when he has at last got hold of it, how eagerly he
  feels it all over, looking intently at it all the time; thus
  learning early to associate the ”feel of an object” with its
  appearance. In this way by degrees he acquires those ideas of
  roughness and smoothness, hardness and softness, solidity, &amp;c.,
  which later on he will be able to distinguish by vision alone, and
  without touching the object.</p>
  <p>Our survival depends so much on this sense of touch, that it is
  of the first importance to us. We must know whether the ground is
  hard enough for us to walk on, or whether there is a hole in front
  of us; and masses of colour rays striking the retina, which is what
  vision amounts to, will not of themselves tell us. But associated
  with the knowledge accumulated in our early years, by connecting
  touch with sight, we do know when certain combinations of colour
  rays strike the eye that there is a road for us to walk on, and
  that when certain other combinations occur there is a hole in front
  of us, or the edge of a precipice.</p>
  <p>And likewise with hardness and softness, the child who strikes
  his head against the bed-post is forcibly reminded by nature that
  such things are to be avoided, and feeling that it is hard and that
  hardness has a certain look, it avoids that kind of thing in the
  future. And when it strikes its head against the pillow, it learns
  the nature of softness, and associating this sensation with the
  appearance of the pillow, knows in future that when softness is
  observed it need not be avoided as hardness must be.</p>
  <p>Sight is therefore not a matter of the eye
  alone. A whole train of associations connected with the objective
  world is set going in the mind when rays of light strike the retina
  refracted from objects. And these associations vary enormously in
  quantity and value with different individuals; but the one we are
  here chiefly concerned with is this universal one of touch.
  Everybody ”sees” the shape of an object, and ”sees” whether it
  ”looks” hard or soft, &amp;c. Sees, in other words, the ”feel” of
  it.</p>
  <p>If you are asked to think of an object, say a cone, it will not,
  I think, be the visual aspect that will occur to most people. They
  will think of a circular base from which a continuous side slopes
  up to a point situated above its centre, as one would feel it. The
  fact that in almost every visual aspect the base line is that of an
  ellipse, not a circle, comes as a surprise to people unaccustomed
  to drawing.</p>
  <p>But above these cruder instances, what a wealth of associations
  crowd in upon the mind, when a sight that moves one is observed.
  Put two men before a scene, one an ordinary person and the other a
  great poet, and ask them to describe what they see. Assuming them
  both to be possessed of a reasonable power honestly to express
  themselves, what a difference would there be in the value of their
  descriptions. Or take two painters both equally gifted in the power
  of expressing their visual perceptions, and put them before the
  scene to paint it. And assuming one to be a commonplace man and the
  other a great artist, what a difference will there be in their
  work. The commonplace painter will paint a commonplace picture,
  while the form and colour will be the means of stirring deep
  associations and feelings in the mind of the other, and will
  move him to paint the scene so that the same splendour of
  associations may be conveyed to the beholder.</p>
  ",
  author_id: User.find_by(username: 'Harold Speed').id
)
file_001 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/joyce-mccown-1106610-unsplash.jpg')
story_001.image.attach(io: file_001, filename: 'joyce-mccown-1106610-unsplash.jpg')
story_001.update(created_at: Time.parse("August 27, 2008, 12:00am UTC +0"))


story_002 = Story.create(
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
    appeared, and with him Adeimantus, Glaucon’s brother, Niceratus the son of
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
  </p>
  <p>
    Then we are not going to listen; of that you may be assured.
  </p>
  <p>
    Adeimantus added: Has no one told you of the torch-race on horseback in
    honour of the goddess which will take place in the evening?
  </p>
  <p>
    With horses! I replied: That is a novelty. Will horsemen carry torches and
    pass them one to another during the race?
  </p>
  <p>
    Yes, said Polemarchus, and not only so, but a festival will be celebrated
    at night, which you certainly ought to see. Let us rise soon after supper
    and see this festival; there will be a gathering of young men, and we will
    have a good talk. Stay then, and do not be perverse.
  </p>
  <p>
    Glaucon said: I suppose, since you insist, that we must.
  </p>
  <p>
    Very good, I replied.
  </p>
  <p>
    Accordingly we went with Polemarchus to his house; and there we found his
    brothers Lysias and Euthydemus, and with them Thrasymachus the
    Chalcedonian, Charmantides the Paeanian, and Cleitophon the son of
    Aristonymus. There too was Cephalus the father of Polemarchus, whom I had
    not seen for a long time, and I thought him very much aged. He was seated
    on a cushioned chair, and had a garland on his head, for he had been
    sacrificing in the court; and there were some other chairs in the room
    arranged in a semicircle, upon which we sat down by him. He saluted me
    eagerly, and then he said:—
  </p>
  <p>
    You don’t come to see me, Socrates, as often as you ought: If I were still
    able to go and see you I would not ask you to come to me. But at my age I
    can hardly get to the city, and therefore you should come oftener to the
    Piraeus. For let me tell you, that the more the pleasures of the body fade
    away, the greater to me is the pleasure and charm of conversation. Do not
    then deny my request, but make our house your resort and keep company with
    these young men; we are old friends, and you will be quite at home with
    us.
  </p>
  <p>
    I replied: There is nothing which for my part I like better, Cephalus,
    than conversing with aged men; for I regard them as travellers who have
    gone a journey which I too may have to go, and of whom I ought to enquire,
    whether the way is smooth and easy, or rugged and difficult. And this is a
    question which I should like to ask of you who have arrived at that time
    which the poets call the ’threshold of old age’—Is life harder
    towards the end, or what report do you give of it?
  </p>
  <p>
    I will tell you, Socrates, he said, what my own feeling is. Men of my age
    flock together; we are birds of a feather, as the old proverb says; and at
    our meetings the tale of my acquaintance commonly is—I cannot eat, I
    cannot drink; the pleasures of youth and love are fled away: there was a
    good time once, but now that is gone, and life is no longer life. Some
    complain of the slights which are put upon them by relations, and they
    will tell you sadly of how many evils their old age is the cause. But to
    me, Socrates, these complainers seem to blame that which is not really in
    fault. For if old age were the cause, I too being old, and every other old
    man, would have felt as they do. But this is not my own experience, nor
    that of others whom I have known. How well I remember the aged poet
    Sophocles, when in answer to the question, How does love suit with age,
    Sophocles,—are you still the man you were? Peace, he replied; most
    gladly have I escaped the thing of which you speak; I feel as if I had
    escaped from a mad and furious master. His words have often occurred to my
    mind since, and they seem as good to me now as at the time when he uttered
    them. For certainly old age has a great sense of calm and freedom; when
    the passions relax their hold, then, as Sophocles says, we are freed from
    the grasp not of one mad master only, but of many. The truth is, Socrates,
    that these regrets, and also the complaints about relations, are to be
    attributed to the same cause, which is not old age, but men’s characters
    and tempers; for he who is of a calm and happy nature will hardly feel the
    pressure of age, but to him who is of an opposite disposition youth and
    age are equally a burden.
  </p>
  <p>
    I listened in admiration, and wanting to draw him out, that he might go on—Yes,
    Cephalus, I said: but I rather suspect that people in general are not
    convinced by you when you speak thus; they think that old age sits lightly
    upon you, not because of your happy disposition, but because you are rich,
    and wealth is well known to be a great comforter.
  </p>
  <p>
    You are right, he replied; they are not convinced: and there is something
    in what they say; not, however, so much as they imagine. I might answer
    them as Themistocles answered the Seriphian who was abusing him and saying
    that he was famous, not for his own merits but because he was an Athenian:
    ’If you had been a native of my country or I of yours, neither of us would
    have been famous.’ And to those who are not rich and are impatient of old
    age, the same reply may be made; for to the good poor man old age cannot
    be a light burden, nor can a bad rich man ever have peace with himself.
  </p>
  <p>
    May I ask, Cephalus, whether your fortune was for the most part inherited
    or acquired by you?
  </p>
  <p>
    Acquired! Socrates; do you want to know how much I acquired? In the art of
    making money I have been midway between my father and grandfather: for my
    grandfather, whose name I bear, doubled and trebled the value of his
    patrimony, that which he inherited being much what I possess now; but my
    father Lysanias reduced the property below what it is at present: and I
    shall be satisfied if I leave to these my sons not less but a little more
    than I received.
  </p>
  <p>
    That was why I asked you the question, I replied, because I see that you
    are indifferent about money, which is a characteristic rather of those who
    have inherited their fortunes than of those who have acquired them; the
    makers of fortunes have a second love of money as a creation of their own,
    resembling the affection of authors for their own poems, or of parents for
    their children, besides that natural love of it for the sake of use and
    profit which is common to them and all men. And hence they are very bad
    company, for they can talk about nothing but the praises of wealth.
  </p>
  <p>
    That is true, he said.
  </p>
  <p>
    Yes, that is very true, but may I ask another question?—What do you
    consider to be the greatest blessing which you have reaped from your
    wealth?
  </p>
  <p>
    One, he said, of which I could not expect easily to convince others. For
    let me tell you, Socrates, that when a man thinks himself to be near
    death, fears and cares enter into his mind which he never had before; the
    tales of a world below and the punishment which is exacted there of deeds
    done here were once a laughing matter to him, but now he is tormented with
    the thought that they may be true: either from the weakness of age, or
    because he is now drawing nearer to that other place, he has a clearer
    view of these things; suspicions and alarms crowd thickly upon him, and he
    begins to reflect and consider what wrongs he has done to others. And when
    he finds that the sum of his transgressions is great he will many a time
    like a child start up in his sleep for fear, and he is filled with dark
    forebodings. But to him who is conscious of no sin, sweet hope, as Pindar
    charmingly says, is the kind nurse of his age:
  </p>
  <p>
    ’Hope,’ he says, ’cherishes the soul of him who lives in justice and
    holiness, and is the nurse of his age and the companion of his journey;—hope
    which is mightiest to sway the restless soul of man.’
  </p>
  <p>
    How admirable are his words! And the great blessing of riches, I do not
    say to every man, but to a good man, is, that he has had no occasion to
    deceive or to defraud others, either intentionally or unintentionally; and
    when he departs to the world below he is not in any apprehension about
    offerings due to the gods or debts which he owes to men. Now to this peace
    of mind the possession of wealth greatly contributes; and therefore I say,
    that, setting one thing against another, of the many advantages which
    wealth has to give, to a man of sense this is in my opinion the greatest.
  </p>
  <p>
    Well said, Cephalus, I replied; but as concerning justice, what is it?—to
    speak the truth and to pay your debts—no more than this? And even to
    this are there not exceptions? Suppose that a friend when in his right
    mind has deposited arms with me and he asks for them when he is not in his
    right mind, ought I to give them back to him? No one would say that I
    ought or that I should be right in doing so, any more than they would say
    that I ought always to speak the truth to one who is in his condition.
  </p>
  <p>
    You are quite right, he replied.
  </p>
  <p>
    But then, I said, speaking the truth and paying your debts is not a
    correct definition of justice.
  </p>
  <p>
    Quite correct, Socrates, if Simonides is to be believed, said Polemarchus
    interposing.
  </p>
  <p>
    I fear, said Cephalus, that I must go now, for I have to look after the
    sacrifices, and I hand over the argument to Polemarchus and the company.
  </p>
  <p>
    Is not Polemarchus your heir? I said.
  </p>
  <p>
    To be sure, he answered, and went away laughing to the sacrifices.
  </p>
  <p>
    Tell me then, O thou heir of the argument, what did Simonides say, and
    according to you truly say, about justice?
  </p>
  <p>
    He said that the repayment of a debt is just, and in saying so he appears
    to me to be right.
  </p>
  <p>
    I should be sorry to doubt the word of such a wise and inspired man, but
    his meaning, though probably clear to you, is the reverse of clear to me.
    For he certainly does not mean, as we were just now saying, that I ought
    to return a deposit of arms or of anything else to one who asks for it
    when he is not in his right senses; and yet a deposit cannot be denied to
    be a debt.
  </p>
  <p>
    True.
  </p>
  <p>
    Then we are not going to listen; of that you may be assured.
  </p>
  <p>
    Adeimantus added: Has no one told you of the torch-race on horseback in
    honour of the goddess which will take place in the evening?
  </p>
  <p>
    With horses! I replied: That is a novelty. Will horsemen carry torches and
    pass them one to another during the race?
  </p>
  <p>
    Yes, said Polemarchus, and not only so, but a festival will be celebrated
    at night, which you certainly ought to see. Let us rise soon after supper
    and see this festival; there will be a gathering of young men, and we will
    have a good talk. Stay then, and do not be perverse.
  </p>
  <p>
    Glaucon said: I suppose, since you insist, that we must.
  </p>
  <p>
    Very good, I replied.
  </p>
  <p>
    Accordingly we went with Polemarchus to his house; and there we found his
    brothers Lysias and Euthydemus, and with them Thrasymachus the
    Chalcedonian, Charmantides the Paeanian, and Cleitophon the son of
    Aristonymus. There too was Cephalus the father of Polemarchus, whom I had
    not seen for a long time, and I thought him very much aged. He was seated
    on a cushioned chair, and had a garland on his head, for he had been
    sacrificing in the court; and there were some other chairs in the room
    arranged in a semicircle, upon which we sat down by him. He saluted me
    eagerly, and then he said:—
  </p>
  <p>
    You don’t come to see me, Socrates, as often as you ought: If I were still
    able to go and see you I would not ask you to come to me. But at my age I
    can hardly get to the city, and therefore you should come oftener to the
    Piraeus. For let me tell you, that the more the pleasures of the body fade
    away, the greater to me is the pleasure and charm of conversation. Do not
    then deny my request, but make our house your resort and keep company with
    these young men; we are old friends, and you will be quite at home with
    us.
  </p>
  <p>
    I replied: There is nothing which for my part I like better, Cephalus,
    than conversing with aged men; for I regard them as travellers who have
    gone a journey which I too may have to go, and of whom I ought to enquire,
    whether the way is smooth and easy, or rugged and difficult. And this is a
    question which I should like to ask of you who have arrived at that time
    which the poets call the ’threshold of old age’—Is life harder
    towards the end, or what report do you give of it?
  </p>
  <p>
    I will tell you, Socrates, he said, what my own feeling is. Men of my age
    flock together; we are birds of a feather, as the old proverb says; and at
    our meetings the tale of my acquaintance commonly is—I cannot eat, I
    cannot drink; the pleasures of youth and love are fled away: there was a
    good time once, but now that is gone, and life is no longer life. Some
    complain of the slights which are put upon them by relations, and they
    will tell you sadly of how many evils their old age is the cause. But to
    me, Socrates, these complainers seem to blame that which is not really in
    fault. For if old age were the cause, I too being old, and every other old
    man, would have felt as they do. But this is not my own experience, nor
    that of others whom I have known. How well I remember the aged poet
    Sophocles, when in answer to the question, How does love suit with age,
    Sophocles,—are you still the man you were? Peace, he replied; most
    gladly have I escaped the thing of which you speak; I feel as if I had
    escaped from a mad and furious master. His words have often occurred to my
    mind since, and they seem as good to me now as at the time when he uttered
    them. For certainly old age has a great sense of calm and freedom; when
    the passions relax their hold, then, as Sophocles says, we are freed from
    the grasp not of one mad master only, but of many. The truth is, Socrates,
    that these regrets, and also the complaints about relations, are to be
    attributed to the same cause, which is not old age, but men’s characters
    and tempers; for he who is of a calm and happy nature will hardly feel the
    pressure of age, but to him who is of an opposite disposition youth and
    age are equally a burden.
  </p>
  <p>
    I listened in admiration, and wanting to draw him out, that he might go on—Yes,
    Cephalus, I said: but I rather suspect that people in general are not
    convinced by you when you speak thus; they think that old age sits lightly
    upon you, not because of your happy disposition, but because you are rich,
    and wealth is well known to be a great comforter.
  </p>
  <p>
    You are right, he replied; they are not convinced: and there is something
    in what they say; not, however, so much as they imagine. I might answer
    them as Themistocles answered the Seriphian who was abusing him and saying
    that he was famous, not for his own merits but because he was an Athenian:
    ’If you had been a native of my country or I of yours, neither of us would
    have been famous.’ And to those who are not rich and are impatient of old
    age, the same reply may be made; for to the good poor man old age cannot
    be a light burden, nor can a bad rich man ever have peace with himself.
  </p>
  <p>
    May I ask, Cephalus, whether your fortune was for the most part inherited
    or acquired by you?
  </p>
  <p>
    Acquired! Socrates; do you want to know how much I acquired? In the art of
    making money I have been midway between my father and grandfather: for my
    grandfather, whose name I bear, doubled and trebled the value of his
    patrimony, that which he inherited being much what I possess now; but my
    father Lysanias reduced the property below what it is at present: and I
    shall be satisfied if I leave to these my sons not less but a little more
    than I received.
  </p>
  <p>
    That was why I asked you the question, I replied, because I see that you
    are indifferent about money, which is a characteristic rather of those who
    have inherited their fortunes than of those who have acquired them; the
    makers of fortunes have a second love of money as a creation of their own,
    resembling the affection of authors for their own poems, or of parents for
    their children, besides that natural love of it for the sake of use and
    profit which is common to them and all men. And hence they are very bad
    company, for they can talk about nothing but the praises of wealth.
  </p>
  <p>
    That is true, he said.
  </p>
  <p>
    Yes, that is very true, but may I ask another question?—What do you
    consider to be the greatest blessing which you have reaped from your
    wealth?
  </p>
  <p>
    One, he said, of which I could not expect easily to convince others. For
    let me tell you, Socrates, that when a man thinks himself to be near
    death, fears and cares enter into his mind which he never had before; the
    tales of a world below and the punishment which is exacted there of deeds
    done here were once a laughing matter to him, but now he is tormented with
    the thought that they may be true: either from the weakness of age, or
    because he is now drawing nearer to that other place, he has a clearer
    view of these things; suspicions and alarms crowd thickly upon him, and he
    begins to reflect and consider what wrongs he has done to others. And when
    he finds that the sum of his transgressions is great he will many a time
    like a child start up in his sleep for fear, and he is filled with dark
    forebodings. But to him who is conscious of no sin, sweet hope, as Pindar
    charmingly says, is the kind nurse of his age:
  </p>
  <p>
    ’Hope,’ he says, ’cherishes the soul of him who lives in justice and
    holiness, and is the nurse of his age and the companion of his journey;—hope
    which is mightiest to sway the restless soul of man.’
  </p>
  <p>
    How admirable are his words! And the great blessing of riches, I do not
    say to every man, but to a good man, is, that he has had no occasion to
    deceive or to defraud others, either intentionally or unintentionally; and
    when he departs to the world below he is not in any apprehension about
    offerings due to the gods or debts which he owes to men. Now to this peace
    of mind the possession of wealth greatly contributes; and therefore I say,
    that, setting one thing against another, of the many advantages which
    wealth has to give, to a man of sense this is in my opinion the greatest.
  </p>
  <p>
    Well said, Cephalus, I replied; but as concerning justice, what is it?—to
    speak the truth and to pay your debts—no more than this? And even to
    this are there not exceptions? Suppose that a friend when in his right
    mind has deposited arms with me and he asks for them when he is not in his
    right mind, ought I to give them back to him? No one would say that I
    ought or that I should be right in doing so, any more than they would say
    that I ought always to speak the truth to one who is in his condition.
  </p>
  <p>
    You are quite right, he replied.
  </p>
  <p>
    But then, I said, speaking the truth and paying your debts is not a
    correct definition of justice.
  </p>
  <p>
    Quite correct, Socrates, if Simonides is to be believed, said Polemarchus
    interposing.
  </p>
  <p>
    I fear, said Cephalus, that I must go now, for I have to look after the
    sacrifices, and I hand over the argument to Polemarchus and the company.
  </p>
  <p>
    Is not Polemarchus your heir? I said.
  </p>
  <p>
    To be sure, he answered, and went away laughing to the sacrifices.
  </p>
  <p>
    Tell me then, O thou heir of the argument, what did Simonides say, and
    according to you truly say, about justice?
  </p>
  <p>
    He said that the repayment of a debt is just, and in saying so he appears
    to me to be right.
  </p>
  <p>
    I should be sorry to doubt the word of such a wise and inspired man, but
    his meaning, though probably clear to you, is the reverse of clear to me.
    For he certainly does not mean, as we were just now saying, that I ought
    to return a deposit of arms or of anything else to one who asks for it
    when he is not in his right senses; and yet a deposit cannot be denied to
    be a debt.
  </p>
  <p>
    True.
  </p>
  ",
  author_id: User.find_by(username: 'Plato').id
)
file_002 = open('https://s3-us-west-1.amazonaws.com/ethertechna-seeds/Polemarchus.jpg')
story_002.image.attach(io: file_002, filename: 'Polemarchus.jpg')
story_002.update(created_at: Time.parse("December 6, 2004, 12:00am UTC +0"))


story_003 = Story.create(
  title: 'THE REPUBLIC: BOOK II',
  lead_in: 'Glaucon, the persistent',
  category: 'Philosophy',
  body: "<p>
    With these words I was thinking that I had made an end of the discussion;
    but the end, in truth, proved to be only a beginning. For Glaucon, who is
    always the most pugnacious of men, was dissatisfied at Thrasymachus’
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
    of the sick, and the physician’s art; also the various ways of
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
  </p>
      <p>
    I wish, he said, that you would hear me as well as him, and then I shall
    see whether you and I agree. For Thrasymachus seems to me, like a snake,
    to have been charmed by your voice sooner than he ought to have been; but
    to my mind the nature of justice and injustice have not yet been made
    clear. Setting aside their rewards and results, I want to know what they
    are in themselves, and how they inwardly work in the soul. If you, please,
    then, I will revive the argument of Thrasymachus. And first I will speak
    of the nature and origin of justice according to the common view of them.
    Secondly, I will show that all men who practise justice do so against
    their will, of necessity, but not as a good. And thirdly, I will argue
    that there is reason in this view, for the life of the unjust is after all
    better far than the life of the just—if what they say is true,
    Socrates, since I myself am not of their opinion. But still I acknowledge
    that I am perplexed when I hear the voices of Thrasymachus and myriads of
    others dinning in my ears; and, on the other hand, I have never yet heard
    the superiority of justice to injustice maintained by any one in a
    satisfactory way. I want to hear justice praised in respect of itself;
    then I shall be satisfied, and you are the person from whom I think that I
    am most likely to hear this; and therefore I will praise the unjust life
    to the utmost of my power, and my manner of speaking will indicate the
    manner in which I desire to hear you too praising justice and censuring
    injustice. Will you say whether you approve of my proposal?
  </p>
  <p>
    Indeed I do; nor can I imagine any theme about which a man of sense would
    oftener wish to converse.
  </p>
  <p>
    I am delighted, he replied, to hear you say so, and shall begin by
    speaking, as I proposed, of the nature and origin of justice.
  </p>
  <p>
    They say that to do injustice is, by nature, good; to suffer injustice,
    evil; but that the evil is greater than the good. And so when men have
    both done and suffered injustice and have had experience of both, not
    being able to avoid the one and obtain the other, they think that they had
    better agree among themselves to have neither; hence there arise laws and
    mutual covenants; and that which is ordained by law is termed by them
    lawful and just. This they affirm to be the origin and nature of justice;—it
    is a mean or compromise, between the best of all, which is to do injustice
    and not be punished, and the worst of all, which is to suffer injustice
    without the power of retaliation; and justice, being at a middle point
    between the two, is tolerated not as a good, but as the lesser evil, and
    honoured by reason of the inability of men to do injustice. For no man who
    is worthy to be called a man would ever submit to such an agreement if he
    were able to resist; he would be mad if he did. Such is the received
    account, Socrates, of the nature and origin of justice.
  </p>
  <p>
    Now that those who practise justice do so involuntarily and because they
    have not the power to be unjust will best appear if we imagine something
    of this kind: having given both to the just and the unjust power to do
    what they will, let us watch and see whither desire will lead them; then
    we shall discover in the very act the just and unjust man to be proceeding
    along the same road, following their interest, which all natures deem to
    be their good, and are only diverted into the path of justice by the force
    of law. The liberty which we are supposing may be most completely given to
    them in the form of such a power as is said to have been possessed by
    Gyges, the ancestor of Croesus the Lydian. According to the tradition,
    Gyges was a shepherd in the service of the king of Lydia; there was a
    great storm, and an earthquake made an opening in the earth at the place
    where he was feeding his flock. Amazed at the sight, he descended into the
    opening, where, among other marvels, he beheld a hollow brazen horse,
    having doors, at which he stooping and looking in saw a dead body of
    stature, as appeared to him, more than human, and having nothing on but a
    gold ring; this he took from the finger of the dead and reascended. Now
    the shepherds met together, according to custom, that they might send
    their monthly report about the flocks to the king; into their assembly he
    came having the ring on his finger, and as he was sitting among them he
    chanced to turn the collet of the ring inside his hand, when instantly he
    became invisible to the rest of the company and they began to speak of him
    as if he were no longer present. He was astonished at this, and again
    touching the ring he turned the collet outwards and reappeared; he made
    several trials of the ring, and always with the same result—when he
    turned the collet inwards he became invisible, when outwards he
    reappeared. Whereupon he contrived to be chosen one of the messengers who
    were sent to the court; whereas soon as he arrived he seduced the queen,
    and with her help conspired against the king and slew him, and took the
    kingdom. Suppose now that there were two such magic rings, and the just
    put on one of them and the unjust the other; no man can be imagined to be
    of such an iron nature that he would stand fast in justice. No man would
    keep his hands off what was not his own when he could safely take what he
    liked out of the market, or go into houses and lie with any one at his
    pleasure, or kill or release from prison whom he would, and in all
    respects be like a God among men. Then the actions of the just would be as
    the actions of the unjust; they would both come at last to the same point.
    And this we may truly affirm to be a great proof that a man is just, not
    willingly or because he thinks that justice is any good to him
    individually, but of necessity, for wherever any one thinks that he can
    safely be unjust, there he is unjust. For all men believe in their hearts
    that injustice is far more profitable to the individual than justice, and
    he who argues as I have been supposing, will say that they are right. If
    you could imagine any one obtaining this power of becoming invisible, and
    never doing any wrong or touching what was another’s, he would be thought
    by the lookers-on to be a most wretched idiot, although they would praise
    him to one another’s faces, and keep up appearances with one another from
    a fear that they too might suffer injustice. Enough of this.
  </p>
  <p>
    Now, if we are to form a real judgment of the life of the just and unjust,
    we must isolate them; there is no other way; and how is the isolation to
    be effected? I answer: Let the unjust man be entirely unjust, and the just
    man entirely just; nothing is to be taken away from either of them, and
    both are to be perfectly furnished for the work of their respective lives.
    First, let the unjust be like other distinguished masters of craft; like
    the skilful pilot or physician, who knows intuitively his own powers and
    keeps within their limits, and who, if he fails at any point, is able to
    recover himself. So let the unjust make his unjust attempts in the right
    way, and lie hidden if he means to be great in his injustice: (he who is
    found out is nobody:) for the highest reach of injustice is, to be deemed
    just when you are not. Therefore I say that in the perfectly unjust man we
    must assume the most perfect injustice; there is to be no deduction, but
    we must allow him, while doing the most unjust acts, to have acquired the
    greatest reputation for justice. If he have taken a false step he must be
    able to recover himself; he must be one who can speak with effect, if any
    of his deeds come to light, and who can force his way where force is
    required by his courage and strength, and command of money and friends.
    And at his side let us place the just man in his nobleness and simplicity,
    wishing, as Aeschylus says, to be and not to seem good. There must be no
    seeming, for if he seem to be just he will be honoured and rewarded, and
    then we shall not know whether he is just for the sake of justice or for
    the sake of honours and rewards; therefore, let him be clothed in justice
    only, and have no other covering; and he must be imagined in a state of
    life the opposite of the former. Let him be the best of men, and let him
    be thought the worst; then he will have been put to the proof; and we
    shall see whether he will be affected by the fear of infamy and its
    consequences. And let him continue thus to the hour of death; being just
    and seeming to be unjust. When both have reached the uttermost extreme,
    the one of justice and the other of injustice, let judgment be given which
    of them is the happier of the two.
  </p>
  <p>
    Heavens! my dear Glaucon, I said, how energetically you polish them up for
    the decision, first one and then the other, as if they were two statues.
  </p>
  <p>
    I do my best, he said. And now that we know what they are like there is no
    difficulty in tracing out the sort of life which awaits either of them.
    This I will proceed to describe; but as you may think the description a
    little too coarse, I ask you to suppose, Socrates, that the words which
    follow are not mine.—Let me put them into the mouths of the
    eulogists of injustice: They will tell you that the just man who is
    thought unjust will be scourged, racked, bound—will have his eyes
    burnt out; and, at last, after suffering every kind of evil, he will be
    impaled: Then he will understand that he ought to seem only, and not to
    be, just; the words of Aeschylus may be more truly spoken of the unjust
    than of the just. For the unjust is pursuing a reality; he does not live
    with a view to appearances—he wants to be really unjust and not to
    seem only:—
  </p>
  <p>
    ’His mind has a soil deep and fertile, Out of which spring his prudent
    counsels.’
  </p>
  <p>
    In the first place, he is thought just, and therefore bears rule in the
    city; he can marry whom he will, and give in marriage to whom he will;
    also he can trade and deal where he likes, and always to his own
    advantage, because he has no misgivings about injustice; and at every
    contest, whether in public or private, he gets the better of his
    antagonists, and gains at their expense, and is rich, and out of his gains
    he can benefit his friends, and harm his enemies; moreover, he can offer
    sacrifices, and dedicate gifts to the gods abundantly and magnificently,
    and can honour the gods or any man whom he wants to honour in a far better
    style than the just, and therefore he is likely to be dearer than they are
    to the gods. And thus, Socrates, gods and men are said to unite in making
    the life of the unjust better than the life of the just.
  </p>
  <p>
    I was going to say something in answer to Glaucon, when Adeimantus, his
    brother, interposed: Socrates, he said, you do not suppose that there is
    nothing more to be urged?
  </p>
  <p>
    Why, what else is there? I answered.
  </p>
  <p>
    The strongest point of all has not been even mentioned, he replied.
  </p>
  <p>
    Well, then, according to the proverb, ’Let brother help brother’—if
    he fails in any part do you assist him; although I must confess that
    Glaucon has already said quite enough to lay me in the dust, and take from
    me the power of helping justice.
  </p>
  ",
  author_id: User.find_by(username: 'Plato').id
)
file_003 = open('https://s3-us-west-1.amazonaws.com/ethertechna-seeds/Glaucon.jpg')
story_003.image.attach(io: file_003, filename: 'Glaucon.jpg')
story_003.update(created_at: Time.parse("December 6, 2004, 12:00am UTC +0"))


story_004 = Story.create(
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
    ’I would rather be a serf on the land of a poor and portionless man than
    rule over all the dead who have come to nought.’
  </p>
  <p>
    We must also expunge the verse, which tells us how Pluto feared,
  </p>
  <p>
    ’Lest the mansions grim and squalid which the gods abhor should be seen
    both of mortals and immortals.’
  </p>
  <p>
    And again:—
  </p>
  <p>
    ’O heavens! verily in the house of Hades there is soul and ghostly form
    but no mind at all!’
  </p>
  <p>
    Again of Tiresias:—
  </p>
  <p>
    ’(To him even after death did Persephone grant mind,) that he alone should
    be wise; but the other souls are flitting shades.’
  </p>
  <p>
    Again:—
  </p>
  <p>
    ’The soul flying from the limbs had gone to Hades, lamenting her fate,
    leaving manhood and youth.’
  </p>
  <p>
    Again:—
  </p>
  <p>
    ’And the soul, with shrilling cry, passed like smoke beneath the earth.’
  </p>
  <p>
    And,—
  </p>
  <p>
    ’As bats in hollow of mystic cavern, whenever any of them has dropped out
    of the string and falls from the rock, fly shrilling and cling to one
    another, so did they with shrilling cry hold together as they moved.’
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
  </p>
  <p>
    Also we shall have to reject all the terrible and appalling names which
    describe the world below—Cocytus and Styx, ghosts under the earth,
    and sapless shades, and any similar words of which the very mention causes
    a shudder to pass through the inmost soul of him who hears them. I do not
    say that these horrible stories may not have a use of some kind; but there
    is a danger that the nerves of our guardians may be rendered too excitable
    and effeminate by them.
  </p>
  <p>
    There is a real danger, he said.
  </p>
  <p>
    Then we must have no more of them.
  </p>
  <p>
    True.
  </p>
  <p>
    Another and a nobler strain must be composed and sung by us.
  </p>
  <p>
    Clearly.
  </p>
  <p>
    And shall we proceed to get rid of the weepings and wailings of famous
    men?
  </p>
  <p>
    They will go with the rest.
  </p>
  <p>
    But shall we be right in getting rid of them? Reflect: our principle is
    that the good man will not consider death terrible to any other good man
    who is his comrade.
  </p>
  <p>
    Yes; that is our principle.
  </p>
  <p>
    And therefore he will not sorrow for his departed friend as though he had
    suffered anything terrible?
  </p>
  <p>
    He will not.
  </p>
  <p>
    Such an one, as we further maintain, is sufficient for himself and his own
    happiness, and therefore is least in need of other men.
  </p>
  <p>
    True, he said.
  </p>
  <p>
    And for this reason the loss of a son or brother, or the deprivation of
    fortune, is to him of all men least terrible.
  </p>
  <p>
    Assuredly.
  </p>
  <p>
    And therefore he will be least likely to lament, and will bear with the
    greatest equanimity any misfortune of this sort which may befall him.
  </p>
  <p>
    Yes, he will feel such a misfortune far less than another.
  </p>
  <p>
    Then we shall be right in getting rid of the lamentations of famous men,
    and making them over to women (and not even to women who are good for
    anything), or to men of a baser sort, that those who are being educated by
    us to be the defenders of their country may scorn to do the like.
  </p>
  <p>
    That will be very right.
  </p>
  <p>
    Then we will once more entreat Homer and the other poets not to depict
    Achilles, who is the son of a goddess, first lying on his side, then on
    his back, and then on his face; then starting up and sailing in a frenzy
    along the shores of the barren sea; now taking the sooty ashes in both his
    hands and pouring them over his head, or weeping and wailing in the
    various modes which Homer has delineated. Nor should he describe Priam the
    kinsman of the gods as praying and beseeching,
  </p>
  <p>
    ’Rolling in the dirt, calling each man loudly by his name.’
  </p>
  <p>
    Still more earnestly will we beg of him at all events not to introduce the
    gods lamenting and saying,
  </p>
  <p>
    ’Alas! my misery! Alas! that I bore the bravest to my sorrow.’
  </p>
  <p>
    But if he must introduce the gods, at any rate let him not dare so
    completely to misrepresent the greatest of the gods, as to make him say—
  </p>
  <p>
    ’O heavens! with my eyes verily I behold a dear friend of mine chased
    round and round the city, and my heart is sorrowful.’
  </p>
  <p>
    Or again:—
  </p>
  <p>
    Woe is me that I am fated to have Sarpedon, dearest of men to me, subdued
    at the hands of Patroclus the son of Menoetius.’
  </p>
  <p>
    For if, my sweet Adeimantus, our youth seriously listen to such unworthy
    representations of the gods, instead of laughing at them as they ought,
    hardly will any of them deem that he himself, being but a man, can be
    dishonoured by similar actions; neither will he rebuke any inclination
    which may arise in his mind to say and do the like. And instead of having
    any shame or self-control, he will be always whining and lamenting on
    slight occasions.
  </p>
  <p>
    Yes, he said, that is most true.
  </p>
  <p>
    Yes, I replied; but that surely is what ought not to be, as the argument
    has just proved to us; and by that proof we must abide until it is
    disproved by a better.
  </p>
  <p>
    It ought not to be.
  </p>
  <p>
    Neither ought our guardians to be given to laughter. For a fit of laughter
    which has been indulged to excess almost always produces a violent
    reaction.
  </p>
  <p>
    So I believe.
  </p>
  <p>
    Then persons of worth, even if only mortal men, must not be represented as
    overcome by laughter, and still less must such a representation of the
    gods be allowed.
  </p>
  <p>
    Still less of the gods, as you say, he replied.
  </p>
  <p>
    Then we shall not suffer such an expression to be used about the gods as
    that of Homer when he describes how
  </p>
  <p>
    ’Inextinguishable laughter arose among the blessed gods, when they saw
    Hephaestus bustling about the mansion.’
  </p>
  <p>
    On your views, we must not admit them.
  </p>
  <p>
    On my views, if you like to father them on me; that we must not admit them
    is certain.
  </p>
  <p>
    Again, truth should be highly valued; if, as we were saying, a lie is
    useless to the gods, and useful only as a medicine to men, then the use of
    such medicines should be restricted to physicians; private individuals
    have no business with them.
  </p>
  <p>
    Clearly not, he said.
  </p>
  <p>
    Then if any one at all is to have the privilege of lying, the rulers of
    the State should be the persons; and they, in their dealings either with
    enemies or with their own citizens, may be allowed to lie for the public
    good. But nobody else should meddle with anything of the kind; and
    although the rulers have this privilege, for a private man to lie to them
    in return is to be deemed a more heinous fault than for the patient or the
    pupil of a gymnasium not to speak the truth about his own bodily illnesses
    to the physician or to the trainer, or for a sailor not to tell the
    captain what is happening about the ship and the rest of the crew, and how
    things are going with himself or his fellow sailors.
  </p>
  <p>
    Most true, he said.
  </p>
  <p>
    If, then, the ruler catches anybody beside himself lying in the State,
  </p>
  <p>
    ’Any of the craftsmen, whether he be priest or physician or carpenter,’
  </p>
  <p>
    he will punish him for introducing a practice which is equally subversive
    and destructive of ship or State.
  </p>
  <p>
    Most certainly, he said, if our idea of the State is ever carried out.
  </p>
  <p>
    In the next place our youth must be temperate?
  </p>
  <p>
    Certainly.
  </p>
  <p>
    Are not the chief elements of temperance, speaking generally, obedience to
    commanders and self-control in sensual pleasures?
  </p>
  <p>
    True.
  </p>
  <p>
    Then we shall approve such language as that of Diomede in Homer,
  </p>
  <p>
    ’Friend, sit still and obey my word,’
  </p>
  <p>
    and the verses which follow,
  </p>
  <p>
    ’The Greeks marched breathing prowess, ...in silent awe of their leaders,’
  </p>
  <p>
    and other sentiments of the same kind.
  </p>
  <p>
    We shall.
  </p>
  <p>
    What of this line,
  </p>
  <p>
    ’O heavy with wine, who hast the eyes of a dog and the heart of a stag,’
  </p>
  <p>
    and of the words which follow? Would you say that these, or any similar
    impertinences which private individuals are supposed to address to their
    rulers, whether in verse or prose, are well or ill spoken?
  </p>
  <p>
    They are ill spoken.
  </p>
  <p>
    They may very possibly afford some amusement, but they do not conduce to
    temperance. And therefore they are likely to do harm to our young men—you
    would agree with me there?
  </p>
  <p>
    Yes.
  </p>
  <p>
    And then, again, to make the wisest of men say that nothing in his opinion
    is more glorious than
  </p>
  <p>
    ’When the tables are full of bread and meat, and the cup-bearer carries
    round wine which he draws from the bowl and pours into the cups,’
  </p>
  <p>
    is it fit or conducive to temperance for a young man to hear such words?
    Or the verse
  </p>
  <p>
    ’The saddest of fates is to die and meet destiny from hunger?’
  </p>
  <p>
    What would you say again to the tale of Zeus, who, while other gods and
    men were asleep and he the only person awake, lay devising plans, but
    forgot them all in a moment through his lust, and was so completely
    overcome at the sight of Here that he would not even go into the hut, but
    wanted to lie with her on the ground, declaring that he had never been in
    such a state of rapture before, even when they first met one another
  </p>
  <p>
    ’Without the knowledge of their parents;’
  </p>
  ",
  author_id: User.find_by(username: 'Plato').id
)
file_004 = open('https://s3-us-west-1.amazonaws.com/ethertechna-seeds/Socrates.jpg')
story_004.image.attach(io: file_004, filename: 'Socrates.jpg')
story_004.update(created_at: Time.parse("December 6, 2004, 12:00am UTC +0"))

story_005 = Story.create(
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
file_005 = open('https://s3-us-west-1.amazonaws.com/ethertechna-seeds/markus-spiske-1611750-unsplash.jpg')
story_005.image.attach(io: file_005, filename: 'markus-spiske-1611750-unsplash.jpg')
story_005.update(created_at: Time.parse("December 1, 2008, 12:00am UTC +0"))


story_006 = Story.create(
  title: 'THE FALLACY OF PROTECTION.',
  lead_in: 'Time was when the Sovereigns of England relied chiefly on the
  granting of patents to individuals for the exclusive exercise of certain
  trades or occupations in particular places',
  category: 'Politics',
  body: "<p>All laws made for the purpose of protecting the interests of individuals
  or classes must mean, if they mean anything, to render the
  articles which such classes deal in or produce dearer than they would
  otherwise be if the public was left at liberty to supply itself with such
  commodities in the manner which their own interests and choice
  would dictate. In order to make them dearer it is absolutely necessary
  to make them scarcer; for quantity being large or small in
  proportion to demand, alone can regulate the price;—protection,
  therefore, to any commodity simply means that the quantity supplied
  to the community shall be less than circumstances would naturally
  provide, but that for the smaller quantity supplied under the restriction
  of law the same sum shall be paid as the larger quantity would
  command without such restriction.</p>
  
  <p>Time was when the Sovereigns of England relied chiefly on the
  granting of patents to individuals for the exclusive exercise of certain
  trades or occupations in particular places, as the means of rewarding
  the services of some, and as a provision for others of their adherents,
  followers, and favourites, who either held the exclusive supply in
  their own hands on their own terms, or who again granted to others
  under them that privilege, receiving from them a portion of the gains.
  In the course of time, however, the public began to discover that
  these monopolies acted upon them directly as a tax of a most odious
  description; that the privileged person found it needful always to
  keep the supply short to obtain his high price (for as soon as he admitted
  plenty he had no command of price)—that, in short, the sovereign,
  in conferring a mark of regard on a favourite, gave not that
  which he himself possessed, but only invested him with the power of
  imposing a contribution on the public.</p>
  
  <p>The public once awake to the true operation of such privileges, and
  severely suffering under the injuries which they inflicted, perseveringly
  struggled against these odious monopolies, until the system was
  entirely abandoned, and the crown was deprived of the power of
  granting patents of this class. But though the public saw clearly
  enough that these privileges granted by the sovereign to individuals
  operated thus prejudicially on the community, they did not see with
  equal clearness that the same power transferred to, and exercised by,
  Parliament, to confer similar privileges on classes; to do for a number
  of men what the sovereign had before done for single men, would, to the
  remaining portion of the community, be just as prejudicial as the
  abuses against which they had struggled. That like the sovereign,
  the Parliament, in protecting or giving privileges to a class, gave
  nothing which they possessed themselves, but granted only the power
  to such classes of raising a contribution from the remaining portion
  of the community, by levying a higher price for their commodity
  than it would otherwise command. As with individuals, it was
  equally necessary to make scarcity to secure price, and that could
  only be done by restricting the sources of supply by prohibiting, or
  by imposing high duties on, foreign importations. Many circumstances,
  however, combined to render the use of this power by Parliament
  less obvious than it had been when exercised by the sovereign,
  but chiefly the fact that protection was usually granted by imposing
  high duties, often in their effect quite prohibitory, under the plea of
  providing revenue for the state. Many other more modern excuses
  have been urged, such as those of encouraging native industry, and
  countervailing peculiar burthens, in order to reconcile public opinion
  to the exactions arising out of the system, all of which we shall, on
  future occasions, carefully consider separately. But, above all, the
  great reason why these evils have been so long endured has been, that
  the public have believed that all classes and interests, though perhaps
  not exactly to the same extent, have shared in protection. We propose
  at present to confine our consideration to the effects of protection,—first,
  on the community generally; and secondly, on the individual
  classes protected.</p>
  
  <p>As it is admitted that protection ought, if granted at all, to be given
  to all alike, it would follow that the whole produce of the country
  would be raised to an artificial price; and if this were the case, as far
  as regarded the exchange or transactions among members of the same
  community, the effect would be merely nominal, of no advantage to
  any one, and of little disadvantage beyond the enormous public expense
  needed to prevent people cheating each other by smuggling and bringing
  in the cheaper foreign article;—but such a community must forego
  all notion or idea of a foreign trade;—they must have no desires to be
  gratified beyond themselves, and they must have within themselves the
  independent means of supplying every want. For even if the law be
  strong enough to maintain an artificial high price at home, it has no
  power of making other countries pay that price; and if everything
  we possessed commanded a higher price at home than other countries
  could supply the same for, we should have nothing which we could
  exchange for the produce of other countries, and thus no more
  foreign trade could exist, than in a poor country which had no surplus
  produce. It is therefore essential that every country should bear in
  mind, in adopting a system of protection to manufactures or other
  produce, that they thereby effectually debar themselves from all foreign
  trade to neutral countries in such articles; for if they require high
  duties at home to protect them from the produce of other countries,
  which could only come at considerable expense to compete with them
  at home, how can they withstand that competition when they meet on
  the same terms in every respect in a neutral market? How effectually
  has France stayed her export linen trade by raising the duties and
  the price of linen yarn, and by that act, intended as a blow to English
  trade, given the linen manufacturers of this country a greater
  advantage over France in the markets of the world than ever. How
  idle are the efforts of the Belgian government to establish dep—ts and
  factories for the sale of their manufactures in St Thomas add other
  places, while the manufacturers in Ghent are only able to maintain
  their home trade, by high protective duties, against English, French,
  and German goods, and still cry out for greater protection!</p>
  
  <p>It is, however, abundantly plain, that the state of a country above
  described could not long exist, when industry and intelligence were in the
  course of producing wealth; for if there be one law in nature
  more distinct than another, it is, that while the productions of every
  country are less or more limited to particular things, the wants of
  man extend to every possible variety of products over the whole
  world, as soon as his means can command them. As a country
  advances in wealth, it will have more and more surplus produce,
  which under wise laws would always consist of such things as
  it could produce with greatest facility and profit, whether from the
  loom or the soil. This surplus produce would be exchanged for the
  productions of other climates, but it must be quite clear, as soon as
  we arrive at this stage, that the power of the law to protect price
  altogether ceases. The surplus exported must sell in the markets
  of the world, in competition with the same article produced under
  the cheapest circumstances, and that article in the home market can
  command only the same price.</p>
  
  <p>Thus the whole attempt to protect all interests equally would immediately
  fail; every article produced in excess, and exported, would
  command only the lowest prices of open markets, and the fancied
  protection of the law would be void; while everything produced in
  deficiency, and of which we required to import a portion to make up
  the needful supply, would continue to be protected above the natural
  price of the world to any extent of import duty that the law imposed
  upon the quantity required to make up the deficiency.</p>
  
  <p>Thus, for example, we export a large portion of the woollen, and
  the largest portion of the cotton goods which we manufacture, to all
  parts of the world, which we must sell at least as cheap as they
  can be bought in any other country. The same articles can only
  command the same price in the home market, and though the law
  imposed an import duty, by way of pretended protection, to any
  extent, upon similar foreign goods, it would not have the effect of
  raising the price one fraction. On the other hand, we do not produce
  as much wool or food as we consume, and have every year to import
  large quantities of each to make up the deficiency. Whatever duty,
  therefore, is put on the import of the quantity thus required, will
  enable the producers at home to maintain their price so much
  above the natural level of the world. By this state of things the
  country at large is injured in two distinct and prominent ways:—first,—those
  articles which we can make in excess, and export, must
  ever be the chief means of absorbing the increasing capital and labour
  of the country; and the impediment thrown in our way, of importing
  those things which we have in deficiency, must necessarily check our
  power of extending the demand for the produce of such increasing
  labour and capital; and, secondly,—the price of such articles as we
  produce in deficiency, will always be maintained much above the
  level of the world, to the great disadvantage of the other great class of
  producers, the price of whose labour, and whose profits, will be
  regulated by competition with those who have food, &amp;c., at the lowest
  price.</p>
  
  <p>So much as to the effect on the community at large. We will now
  shortly consider the effect on individual interests, which are thought
  to enjoy protection, and we believe we can show that there never was
  a condition so fraught with mischief and disappointment, with such
  unmitigated delusion, deception, and exposure to ruin, than is to be
  found in every case where protection operates. We think it can be
  clearly shown <i>that such occupations can never be more profitable; that they
  must usually be less profitable; and that they are always more exposed to
  vicissitudes than any other class</i>.</p>
  
  <p>They never can be more profitable, because capital and enterprise
  will always be attracted to any occupation which offers a larger
  profit than the usual rate, till it is reduced to a level with others;
  they will usually be less profitable, indeed always in a community of
  increasing numbers, because the price being maintained by restriction
  above the price of the world, prevents an extension of such trades in
  the same proportion as those who naturally belong to them, and look
  to them for occupation, increase in numbers: they will be exposed to
  greater vicissitudes, because, being confined to the supply of only one
  market, any accidental circumstance, which either increases the
  usual supply, or diminishes the usual demand, will cause an infinitely
  greater depression than if they were in a condition to avail themselves
  of the markets of the whole world, over which they could spread an
  accidental and unusual surplus.</p>
  
  <p>Thus, previous to 1824, the silk manufacturers of this country were
  protected to a greater extent than any other trade, and the price of
  silk goods was maintained much above the rate of other countries;
  our silk trade was therefore necessarily confined almost exclusively to
  the home market and our colonies, and though they had a monopoly
  of those markets, it was at the cost of exclusion (on account of higher
  price) from all other markets.</p>
  
  <p>Notwithstanding this monopoly, the silk manufacturers could never
  command at any time larger <i>profits</i> than other trades; for had they
  done so, competition would have increased until the rate was reduced
  to the common level of the country: on the contrary, the tendency
  was for profits and rates of wages to be smaller than in other great
  manufacturing branches, requiring equal capital and skill; because,
  with the increasing numbers who belonged to the silk trade,—the sons
  of manufacturers and of weavers, who naturally, in the first instance,
  look to the trade of their parents for their occupation,—the trade did
  not proportionably increase, from the fact of our being unable to
  extend our exports; and, lastly, it was exposed to much greater
  vicissitudes than other trades; for when, either from a temporary
  change of fashion or taste, or from a temporary stagnation of trade
  in this country, the accustomed demand was lessened, the silk manufacturers
  were unable to obtain any relief by extending their trade in
  the great neutral markets of the world, being excluded by price, and
  the whole surplus quantity remained a dead weight on this market
  only; whereas other branches of manufactures, practically enjoying
  no protection, in the case of depressed trade at home, had an opportunity
  of immediate relief, by spreading the surplus thereby created,
  at a very trifling sacrifice, over the wide markets which they supplied.</p>
  
  <p>In this way the extent and duration of the vicissitudes and depressions
  in the silk trade were without parallel in any other; but
  since 1824, since this trade has been placed in a natural position by
  the removal of monopoly, the whole aspect of it has changed, and these
  peculiar evils have all disappeared.</p>
  
  <p>Then again with regard to the products of land, which the law
  attempts to protect more highly than any other. Here again, though
  the price to the community is maintained much above the prices of
  other countries, no one person connected with raising the produce
  can command a higher rate of profit, or higher wages for labour,
  than other trades having no protection whatever; for if they did,
  competition would soon reduce them to the same level; but, on the
  contrary, the wages, of agricultural labourers, and the profits of
  farmers, are always rather below than above the common rate, and simply
  from this fact, that the children of farm labourers, and of
  farmers, who first naturally look to the pursuits of their parents for
  a trade or occupation, increase in numbers without any corresponding
  extension of the means of employment, and the competition among
  them is therefore always greater than in other trades which have
  the power of extension; and the vicissitudes to which the farmer is
  exposed are notoriously greater than any other trade. His rent and
  expenses throughout are fixed by an artificial price of produce, which
  price can only be maintained as long as a certain scarcity exists;
  but the moment the markets are plentifully supplied, either from a
  want of demand owing to a depression of trade, or from the result
  of a good harvest, he finds that plenty takes out of his hand all
  control of price, which quickly sinks to the natural rate.</p>
  
  <p>With a free trade the farmer would never be exposed to such
  reverses. In that state, if the demand and price increased, it would
  be checked by an increase of imports from other countries; if the
  demand and price diminished, that would also be checked by a reduction
  or cessation of the usual imports, and, if necessary, by an export
  of any surplus which pressed upon the market;—and, if our space
  allowed, it would not be difficult to show that, with prices at the
  natural rate, all parties connected with land would not only be in
  a safer but a much better condition.</p>
  
  <p>No cautious man who well understands the subject will ever hazard
  his capital in any trade exposed to so many evils and to so much
  uncertainty as restriction and protection infallibly introduce into it:—but
  the great error which misleads all men in cherishing such trades
  is, that they mistake <i>high prices</i> for <i>high profits</i>, which usually, instead
  of being synonymous terms, are quite the reverse.</p>
  ",
  author_id: User.find_by(username: 'various').id
)
file_006 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/joakim-honkasalo-587350-unsplash.jpg')
story_006.image.attach(io: file_006, filename: 'joakim-honkasalo-587350-unsplash.jpg')
story_006.update(created_at: Time.parse("December 29, 1843, 12:00am UTC +0"))


story_007 = Story.create(
  title: 'AGRICULTURE. No. II.',
  lead_in: 'These three signs, viz., colour, consistence, and vegetation, are named by the Royal Agricultural Society as being pre-eminently indications of the value of lands; yet there are others of equal if not of greater consequence.',
  category: 'Agriculture',
  body: "<p>These three signs, viz., colour, consistence, and vegetation, are
  named by the Royal Agricultural Society as being pre-eminently indications
  of the value of lands; yet there are others of equal if not of
  greater consequence. For example:—</p>
  
  <p><i>A knowledge of the geology of the land</i> is of the first importance; that
  is, not only a knowledge of the range and extent of each formation
  and its subdivisions, which may be called geographical geology, but
  also how far and to what extent the various lands do depend upon the
  substratum for their soil, and the local variations in the chemical or
  mineralogical character of the substrata themselves, and which may
  be called the differential geology of soils. For not only do the qualities
  of land vary from one formation to another, but upon the same formation
  there is frequently considerable difference in the quality of land
  depending upon chemical difference in the substratum, or upon an
  intermixture of foreign debris derived from other strata.</p>
  
  <p><i>A chemical investigation</i> of the soil and subsoil will frequently afford
  most useful indications respecting the value of land. It may be laid
  down as an axiom that a soil to be fertile must contain all the chemical
  ingredients which a plant can only obtain from the soil, and chemistry
  ought to be able to inform us in unproductive soils what ingredients
  are wanting. It also is able to inform us if any poisonous substance
  exists in the soil, and how it may be neutralized; when lime, marl, and
  chalk are to be used, &amp;c.[1]</p>
  
  <p>The Royal Agricultural Society say that chemistry is unable to explain
  the productiveness of soils. But why is it unable? One reason
  is, that supposing everything required by the plant to be present in the
  soil, yet if the soil be either too wet, or too dry, too cohesive, or loose, the
  plant will not flourish; and chemical analysis does not declare this, for
  it affords no information respecting the mechanical division in which
  substances exist in the soil. Again, the chemical analysis of soils, to be
  worth anything, must be conducted with more rigid accuracy than
  those published by English writers. To detect one cwt. of gypsum in
  an acre there would be only one quarter of a grain in a pound of soil, or
  in 100 grains only three and a half thousandth of a grain (35&#8260;10000 or,00035
  grs.), or to discover if sufficient alumina existed in a field for the production
  of red clover there must be ascertained if it contained (one
  hundred thousandth),00001 per cent. The analyses even by Sprengel
  do not afford us the quantity of nitrogen in each soil, or the capacity
  of the soil for this substance; while it is well known that most manures,
  as well as the different kinds of food, are valuable in proportion to the
  quantity contained by them, and it is highly probable, <i>ceteris paribus</i>,
  that the quantity of nitrogen found existing in soil, and the soil’s
  capacity for containing that substance, would afford an easy indication
  of its immediate fertility, and also of its requiring great or small quantities
  of nitrogenous manures in its future cultivation.[2]</p>
  
  <p>Chemistry, however, outsteps her province when it is attempted to
  explain how vegetable productions are formed in the plants by chemical
  forces; for the recent discoveries of Schwann, Henle, and Schleiden,
  prove that all the functions of the plant are performed by the means
  of simple vesicles and cells—that absorption, assimilation, fixation of
  carbon from the atmosphere, respiration, exhalation, secretion, and
  reproduction are all effected by single cells, of which the lower plants
  almost entirely consist—that the cell absorbs alimentary matters
  through the spongioles of the root, and that the fluid received thus
  undergoes the first steps of the organizing process—that the inorganic
  elements are changed into the simplest proximate principles
  by cells—so also are the further changes into the regular secretions
  of the plant, the result of cell-life—that gum and sugar are converted
  into the organizable portion of the nutritious sap by the
  cells of the leaves. The starchy fluid in the grains of corn is
  rendered capable of nutrition to the embryo by the development
  of successive generations of cells, which exert upon it their peculiar
  vitalizing influence. Albumen is converted into fibrine by the vital
  agency of cell life—<i>i.e.</i>, cells are produced which do not form an integral
  part of any permanent structure in the plant, but which, after
  attaining a certain maturity, reproduce themselves and disappear;
  hence it may be stated that all the vegetable productions which are
  formed in the plant are effected by a series of vital actions through
  the agency of cells.</p>
  
  <p>From the different transformations which these undergo all the
  different tissues in vegetables are formed; for instance, the spiral and
  dotted ducts, woody fibre, and so on. Schwann showed that the
  formation of tissues in animals went through exactly the same progress,
  a fact which has been confirmed by the microscopic observations
  of Valentin and Barry. Thus vessels, glands, the brain, nerves, muscles,
  and even bones and teeth are all formed from metamorphosed
  cells. Dr Bennett says—“If this be true, and there can be little
  doubt, it obliges us to modify our notions of organization and
  life. It compels us to confess that vegetables and animals are not
  simple beings, but composed of a greater or less number of individuals,
  of which thousands may exist in a mass not larger than a
  grain of sand, each having a vital centre and separate life, independent
  of those around it. Each of these individuals, or organized cells,
  should be regarded as a living being, which has its particular vital
  centre of absorption, assimilation, and growth, and which continues
  to vegetate, to increase, and undergo transformations as if it were an
  isolated individual. At all events, a knowledge of the existence of
  the cell-life of plants will explain several phenomena respecting the
  vegetation, growth, and ripening of corn, and may hereafter lead to
  some valuable practical results.”</p>
  
  <p><i>The climate, elevation, and exposure</i> are not to be neglected. Upon
  the higher portions of the Wolds crops suffer, much from elevation
  and exposure, while in the western portion of Yorkshire, upon the
  moor edges, the harvest is usually a month later than in the central
  parts of the island.</p>
  
  <p><i>A moderate depth</i> of soil in general is a favourable sign, although
  some of shallow soils on the new red sandstone and on the Wolds are
  very good; to these signs are to be added locality, as respects markets,
  facilities of obtaining a supply of lime, or other tillage, the rates
  and outpayments peculiar to the district, &amp;c. &amp;c., all of which are to be
  taken into account when considering the value of any particular farm.</p>
  
  <p>I shall now briefly apply these indications of fertility over the different
  geological formations of Yorkshire, and it will be found that
  each lends aid to the other, and that a person will be able to ascertain
  the value of land in proportion as he is able to appreciate the collective
  evidence afforded by them.</p>
  
  <p>(<i>To be continued.</i>)</p>
  
  <p>[1] Mr Brakenridge, of Bretton Lodge, who has extensive practice in
  land valuing, informs me that a mechanical analysis of the soil affords him
  much assistance; and he has found that in soils, whenever free from stagnant
  water, that in a mechanical analysis the larger the proportion which
  remains suspended in the water, the greater its powers of production will
  be found, and the less manure it will require. That the best soils
  are those which, when diffused and well stirred in water and allowed
  to stand for three minutes, from 20 to 30, say 25, per cent. is carried off
  with the water of decantation. When 30 per cent. and upwards is decanted
  off, the soil becomes retentive of water and consequently wet. When less
  than 20 per cent., say only 16 per cent. and under, is carried off, it becomes
  too porous; water passes through it too rapidly; its soluble matter is washed
  off into the substratum, and it has a strong tendency to become thin and
  sterile.</p>
  
  <p>[2] The celebrated black earth of Russia contains 2,45 per cent. of
  nitrogen.</p>
  ",
  author_id: User.find_by(username: 'William Thorp').id
)
file_007 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/agence-producteurs-locaux-damien-kuhn-97729-unsplash.jpg')
story_007.image.attach(io: file_007, filename: 'agence-producteurs-locaux-damien-kuhn-97729-unsplash.jpg')
story_007.update(created_at: Time.parse("December 29, 1843, 12:00am UTC +0"))


story_008 = Story.create(
  title: 'MUSIC AND MUSICALES.',
  lead_in: 'One of the greatest and finest musical events that ever occurred in Manchester',
  category: 'Music',
  body: "<p>Manchester Musical Festival.–This great festival–one of the
  greatest and finest musical events that ever occurred in Manchester–was
  held in the magnificent hall of the Anti-Corn-law League, the length of
  which is 135 feet, the breadth 102 feet, inclosing an area of about 14,000
  square feet. The services of all our principal vocal artists were secured.
  The <i>soprani</i> were Miss Clara Novello and Miss Rainforth; the <i>alto</i> or <i>mezzo
  soprano</i>, Mrs Alfred Shaw; the <i>tenori</i>, Mr Braham and Mr James Bennett;
  and the <i>basso</i>, Mr Henry Phillips. The choir was the most complete and
  efficient one ever collected in Manchester, and consisted of nearly the
  whole of the vocal members of the Manchester Choral Society and the
  Hargreaves Choral Society, with some valuable additions from the choirs
  of Bury and other neighbouring towns, and from gentlemen amateurs,
  conversant with Handel. The <i>Messiah</i> was the performance of Monday
  night; and, on the whole, was executed in a style worthy of that great
  work of art, the conductor being Sir Henry Bishop, who wore his robes as
  a musical bachelor of the University of Oxford. On Tuesday there was
  a grand miscellaneous concert, the hall being even more numerously attended
  than on the preceding evening, there not being fewer than 3,500
  persons present. This went off with very great satisfaction to the very
  numerous auditory; and the <i>Manchester Guardian</i> says, “As to the general
  impression produced by this festival, we believe we do not err in saying
  that there is but one opinion,–that it has been throughout an eminently
  successful experiment. Sir Henry Bishop, we understand, said that he
  never heard choruses sung with better effect in his life; and that he considered
  the festival, as a musical performance, most creditable to every one
  connected with it. As to the capabilities of the hall for singing, we are
  informed that Miss Clara Novello has declared that she never sang with
  more ease in any place in her life; and we think the ease with which she
  did sing was obvious to all who could see her countenance. We have
  asked many persons who sat in different parts of the hall, especially in
  distant corners, and all concur in saying that they heard most distinctly
  Miss Novello’s softest and faintest notes.”</p>
  
  <p>Musical Intelligence.–Rubini is about to establish an opera at St
  Petersburg, and has engaged his old colleague, Tamburini, to assist him in
  the enterprize. He has also engaged Signor Pisani, a young tenor of great
  promise. Lablache will not appear at the opening of the Italian Opera in
  Paris. He has gone to Naples, where he will remain for two months, and
  where he is to be joined by his son-in-law, Thalberg. A grand musical
  festival, which was to have taken place in Paris on Thursday next, has
  been postponed till the beginning of October. It is said that this festival
  will rival those of Germany in splendour.</p>
  
  <p>The Hereford Musical Festival, which was held on Tuesday, Wednesday,
  and Thursday, in All Saints Church, in consequence of the repairs going
  on at the cathedral, was on a much smaller scale than of late years has
  been usual with the three choirs, and the attendances at the various performances
  were by no means so numerous as had been generally expected;
  still, as the expenses had been studiously kept down, it is to be hoped the
  receipts may cover them, or nearly so. The collections after the three
  services amounted to 865<i>l.</i>, being 200<i>l.</i> less than in 1840, but 50<i>l.</i> more than
  in 1837.–<i>Cheltenham Looker-on.</i></p>
  
  <p>Rossini has just left Paris without its having been possible to procure
  a note from him. Every effort has been fruitless. Unwilling to hear one
  word said of music, Rossini has not even been to the Opera. He is returning
  to Bologna, cured of a painful disease by Doctor Civiale, who, with
  reason, seemed to him a far more important personage than Duprez. It
  is said that Rossini replied to the great tenor, who asked him for a part,
  “I have come too early, and you too late.”–<i>French print.</i></p>
  ",
  author_id: User.find_by(username: 'various').id
)
file_008 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/zuza-galczynska-763528-unsplash.jpg')
story_008.image.attach(io: file_008, filename: 'zuza-galczynska-763528-unsplash.jpg')
story_008.update(created_at: Time.parse("December 29, 1843, 12:00am UTC +0"))

story_009 = Story.create(
  title: 'LIGHT AND VEGETATION.',
  lead_in: 'By photosynthesis, carbon dioxide from the air and water from the cell are combined in the green cells of leaves, forming sugar and possibly other substances.',
  category: 'Science',
  body: "<p>Light is the most important of all the external agencies which
  influence the vegetal organism, and the sun’s rays have been
  the most potent force in shaping the development of existent plant
  forms.</p>
  
  <p>The sunbeam stands in a manifold relation to the plant. First
  and foremost, light is the universal source of energy, by the aid of
  which the chlorophyll apparatus in green leaves builds up complex
  food substances from simple compounds obtained from the soil and
  air, a process necessary for the nutrition of the entire living world.
  Some obscure organisms, such as the “nitrosomonas,” soil bacteria,
  are able to accomplish the construction of complex substances, by
  means of energy derived from other chemical compounds, which
  were, however, formed originally by green plants. These food-building
  processes are designated as photosynthesis, chemosynthesis,
  electrosynthesis, thermosynthesis, etc., according to the source of
  energy used.</p>
  
  <p>By photosynthesis, carbon dioxide from the air and water from
  the cell are combined in the green cells of leaves, forming sugar and
  possibly other substances. During this process an amount of oxygen
  approximately equal to that of the carbon dioxide taken up is exhaled.
  It will be of interest to note the relation of the living
  world to the atmosphere. Eight hundred to nine hundred grammes
  of carbon dioxide are produced in the respiration of a single
  person for a day, and the entire product of the human race for
  this period is twelve hundred million kilogrammes. In addition,
  large quantities of the gas result from the combustion of the four
  hundred and sixty millions of kilogrammes of coal and wood burned
  yearly. The lower animals, fungi, and green plants themselves contribute
  an amount which must bring the total to twice the immense
  sum named above. The atmosphere contains three or four hundredths
  of one per cent of carbon dioxide, or an amount of about
  two to three thousand billions of kilogrammes. No especial variation
  in this proportion has been detected since observations upon this
  point were first made. The fact that no increase takes place is partly
  due to the absorption of the gas by plants, and its replacement by oxygen,
  and also to certain geological processes in constant operation.
  Absorption takes place at the rate of about two and a half grammes
  for every square metre of leaf surface per hour, or about twenty-five
  to thirty grammes daily, since the process goes on only in daylight.
  It is to be seen that a single human being exhales as much carbon dioxide
  as may be removed from the air by thirty or forty square metres
  of leaf surface. According to Ebermayer, a hectare (2.47 acres) of
  forest would use eleven thousand kilogrammes of carbon dioxide
  yearly, and the amount used by plants is generally much in excess
  of that furnished by the activity of the inhabitants of any given area.
  Plants thrive and show increasing vigor as the amount of carbon
  dioxide in the air rises until two hundred times the present proportion
  is reached. An increase of the gas in the atmosphere would
  therefore be partly corrected by the absorption and by the stronger
  vegetation induced. Nothing short of a comprehensive cataclysm
  could work such disturbance to the composition of the air as to endanger
  the well-being of the animal inhabitants of the earth.</p>
  
  <p>The activity of a square metre of leaf surface results in the
  formation of one and a half to two grammes of solid substance per
  hour in sunlight. A vigorous sunflower with one hundred and forty-five
  leaves constructed thirty-six grammes of solid matter in a day,
  and a squash with one hundred and sixteen leaves one hundred and
  sixteen grammes in the same length of time. The amounts formed
  by such trees as the beech, maple, oak, poplar, elm, and horse-chestnut,
  with leaf surfaces aggregating three hundred to one thousand
  square metres, must be correspondingly large.</p>
  
  <p>A comparison of plants grown in strong sunlight, diffuse light,
  and darkness will reveal many differences in stature and internal
  structure. These differences are for the most part due to the <i>formative</i>
  and <i>tonic</i> effect of light. Otherwise expressed, the influence of
  variations of light upon plants causes adaptive reactions, and disturbances
  of the nutritive processes and growth.</p>
  
  <p>In consequence of these facts the reaction of any given organ to
  changes in the intensity of the illumination will depend upon its specific
  functions and relation to the remainder of the organism.</p>
  
  <p>The stems formed by seedlings and awakening underground
  organs are usually surrounded by plants or other objects which cut
  off more or less sunlight. The developing shoot can not spread its
  leaves to the light advantageously until it has outstripped or grown
  beyond the objects intervening between it and the light. This necessity
  is one of the most important conditions in the struggle for existence.
  To meet it, a very great majority of seed-forming plants
  have acquired the power of accelerated elongation of the stems when
  deprived of their normal amount of light.</p>
  
  <p>Very striking examples of this reaction are offered by the awakening
  corms of the Jack-in-the-pulpit (<i>Aris�ma triphyllum</i>). The
  corms usually lie at a distance of five or six centimetres below the
  surface of the soil, and when the growth of the large bud begins in
  the spring the heavy sheathing scales elongate and pierce the soil,
  opening when the surface is reached at the distance of a few centimetres.
  If the corm should have been buried deeper in the substratum
  by floods or drifts of leaves, the growth of the bud scales will continue
  until the light is reached, though it may be a distance of twenty
  centimetres. Such growth may be seen if the corms are grown in a
  deep layer of sphagnum moss, or in a dark room.</p>
  
  <p>After the stems emerge from the “drawn” buds they show a
  similar attenuation, attaining a length of twice the normal. The excessive
  elongation of stems is accompanied by variations in the structure
  and contents of the tissues. The cells are generally longer,
  while the walls are thinner. In consequence, organs grown in darkness
  are very weak and easily bent or broken. Growth in darkness is
  attended by the non-formation of chlorophyll. This is replaced by
  etiolin, giving the plant a pale, waxy, yellow appearance.</p>
  
  <p>The adaptive elongation is not shown by all species, however.
  It has been found that stems of beet, hop, dioscorea, and a few
  others show no adaptations to diminished light. The adaptive
  modification of stems elongating in darkness is developed from the
  retarding influence exercised by light upon growth. Thus it is a
  well-known fact that the action of certain portions of the sun’s rays
  actually impedes or checks the increase in volume known as growth,
  though it does not influence actual division of the cells to any great
  extent. When this retarding action is eliminated excessive elongation
  ensues.</p>
  
  <p>The behavior of leaves in illuminations below the normal depends
  upon the relation of these organs to the storage structures of
  the plant as well as upon other factors, and many types are dependent
  upon their own activity for plastic material necessary for
  growth.</p>
  
  <p>It is to be said in general that leaves of dicotyledonous plants
  are incapable of full development in darkness, though to this rule
  there are many exceptions. Thus the leaves of the beet develop
  normally, or nearly so, in darkness.</p>
  
  <p>On the other hand, leaves of monocotyledonous plants attain
  normal size in darkness, especially those with straight or curved
  parallel venation. Some, as the iris, swamp marigold, and onion,
  attain a greater length in darkness than in light. Here, as in stems,
  cell division is not modified, but the growth of the individual cell
  is increased.</p>
  
  <p>The growth of leaves in darkness may be easily observed if the
  underground perennial stems of common mandrake are placed in a
  dark chamber before the growth of the leaf buds has begun. The
  leaves are peltate, and in the bud are folded about the end of the
  petiole after the manner of an umbrella. Usually this umbrella
  expands as soon as it has pushed upward and become free from the
  soil, attaining a diameter of twenty-five to forty centimetres when
  outspread. In darkness, however, it refuses to unfold, the lamin�
  are pale yellow and retain the crumpled form of the bud, and as the
  petiole shows an exaggerated elongation the organ takes on the appearance
  of a very small parasol on a very long handle. The imperfect
  development of leaves and the rapid decay of a�rial organs
  deprived of sunlight leads to the conclusion that the action of light
  is necessary to the health and normal activity of these organs, and
  the light therefore exercises a <i>tonic</i> influence upon vegetation.</p>
  
  <p>Many species of plants are so plastic and capable of such ready
  response to variations in external conditions that they undergo distinct
  morphological changes in response to variations in the intensity
  of the light. The common potato is an example of this fact. The
  edible tubers are simply thickened stems, and the plant has the habit
  of storing starch in any stems not acted upon by the light. The
  branches arising from the base of the main stem are generally underneath
  the surface of the soil, and afford the proper conditions
  for tuber formation. Sugar is constructed in the leaves, carried down
  the length of the stem, and deposited in the underground branches
  as starch. Space is made for the accumulating store by the multiplication
  of the thin-walled cells of the pith. If any of the upper
  branches should become shaded, they become at once the focus of
  converging streams of sugar, and similar enlargement ensues, resulting
  in the formation of tubers. Such structures are occasionally
  observed in plants grown thickly together.</p>
  
  <p>V�chting, by a number of most ingenious experiments, has succeeded
  in producing tubers on any branch of a potato plant by simply
  inclosing the branch in a small dark chamber. As the result of one
  experiment the entire main stem springing from a sprouting tuber
  was converted into a new tuber nearly as large as the first. The
  entire plant at the close of the experiment had the form of a dumb-bell,
  with the old tuber as one ball and the new tuber as the other.</p>
  
  <p>The same writer has described important results obtained from a
  study of the action of light upon the stems of cactus, consisting of
  a number of flattened internodes. When the growing tips of such
  plants were allowed to develop in a dark chamber the new internodes
  grown were cylindrical in form. Such behavior suggests that these
  plants were originally furnished with cylindrical stems and foliar
  leaves. The leaves at some time in the history of the plant were
  found unsuitable, and gradually atrophied, while the stems were
  flattened and extended to take up their functions.</p>
  
  <p>Some very striking adaptations of form of organs to the intensity
  of the light have been analyzed by Goebel. The common harebell
  (<i>Campanula rotundifolia</i>) has an upright stem twenty to sixty centimetres
  in height. The upper part of the stem bears sessile lanceolate
  leaves, decreasing in size from the base to the summit. The first
  leaves formed by the stem on its emergence from the soil are entirely
  different in construction, showing a heart-shaped lamina with a distinct
  petiole. These leaves are formed at the actual surface of the
  soil, are generally more or less shaded or covered by fallen leaves, and
  in fact are not known or seen by many collectors or observers of
  the plant. Goebel found that similar leaves might be formed on any
  part of the plant if it were shaded from the full glare of the sun’s
  rays. The cordate leaves at the base of the stem were always produced,
  however, no matter to what intensity of illumination that
  part of the plant was subjected. It is therefore safe to conclude
  that the cordate leaves are inherited forms, and that the lanceolate
  organs are adaptations to light which may be shown by any individual
  of the species.</p>
  
  <p>In general it is to be said that the leaves of sun-loving species
  have a thick epidermis, entirely free from chlorophyll, with stomata
  on the lower side only, a firm consistence due to the formation of
  woody tissues, and are often provided with a coating of hairs. The
  leaves of shade-loving plants, on the other hand, have a thin-walled
  epidermis often containing chlorophyll, stomata on both sides, and
  are not so plentifully provided with hairs as those in exposed situations.</p>
  
  <p>The variations in external form described above are due to the
  intensity of the illumination. At the same time the structure and
  arrangement of the cells depend on the direction from which the
  light rays come. Thus, an organ receiving light from one side only
  will exhibit a structure different from an organ of the same kind
  receiving direct rays from two or more sides. Light, then, is a cause
  of dorsiventrality�that is, of the fact that the upper and lower sides
  of organs are not alike in structure. The leaf affords a splendid example
  of dorsiventrality as a result of the exposure of one side only
  to direct light. The upper side of a horizontal leaf, such as the oak,
  beech, or maple, contains one or two layers of cylindrical cells with
  their long axes perpendicular to the surface. In vertical leaves, such
  as the iris, these <i>palisade</i> cells, as they are termed, are not so well
  defined, and in all leaves grown in darkness this tissue is very much
  reduced. If a young leaf not yet unfolded from the bud is fastened
  in such a position that the under side is uppermost, palisade
  cells will be formed on the side exposed to the direct rays of
  the sun.</p>
  
  <p>The influence of light upon the sporophylls, or reproductive organs
  of the seed-forming plants, is quite as well defined as upon the
  vegetative organs.</p>
  
  <p>In general it is to be said that stamens and pistils may reach
  functional maturity in darkness or diffuse light, and if pollination is
  provided for, seed and fruit formation may ensue.</p>
  
  <p>The diminution of light has the effect of transforming inflorescences
  into leafy shoots in some instances, however. The more
  common reaction consists of alterations in the size, form, and color
  of the perianth, and greater changes are induced in the petals than
  in the sepals. The corolla shows greater decrease in size in <i>Melandryum</i>
  and <i>Silene</i>, in diffuse light, though the relative form is maintained.
  The writer has obtained most striking results from growing
  flowers of <i>Salvia</i> (sage) in a dark chamber, inclosing the inflorescence
  only. In the normal flower the irregular scarlet corolla
  attains three times the length of the calyx, and two stamens extrude
  from under the upper lip. When grown in darkness, the corolla
  with the adherent stamens measure about three millimetres in length,
  or one twelfth the normal, and are scarcely more than half the size
  of the calyx, which is but two thirds the size of similar organs grown
  in the light. The color is entirely lacking from the corolla, and is
  found only along the veins of the calyx.</p>
  
  <p>In other instances in which the corolla is composed of separate
  members, an unequal reaction is exhibited. The corolla of nasturtium
  (<i>Trop�olum majus</i>) consists of five approximately equal petals.
  Flowers of this species grown in darkness show one of nearly normal
  stature, two of reduced size, while the remaining two take the form
  of club-shaped bracts.</p>
  
  <p>The diminished size of the perianth of cleistogamous flowers of
  such types as the violet is due directly to the action of diminished
  light upon the hidden or inclosed flower.</p>
  
  <p>The influence of light upon the structure, reproductive processes,
  and distribution of the lower forms brings about the most widely
  divergent reactions, which can not be described here.</p>
  
  <p>The distribution and color of marine alg� depend upon the depth
  of the water and the consequent intensity of the light. This gives
  rise to distinct zones of aquatic vegetation. Thus in one series of
  surveys the <i>littoral</i> zone, the beach area covered at high water and
  exposed at low water, was found to furnish proper conditions for
  green, brown, and red alg�. The <i>sublittoral</i> zone, extending to a
  depth of forty metres, is furnished with red alg�, increasing in number
  with the depth, and the brown alg� disappear; while the <i>elittoral</i>
  zone, from forty to one hundred and ten metres, is inhabited by red
  alg� alone. The number of species of vegetal organisms below
  this depth is extremely small. An alga (<i>Halosph�ria viridis</i>)
  has been brought up from depths of one thousand to two thousand
  metres.</p>
  
  <p>A very great number of bacteria are unfavorably affected by
  light, and find proper conditions at some depth in the soil or water.
  It is on account of this fact that the water of frozen streams becomes
  more thickly inhabited by certain organisms than in the summer
  time, and exposure to sunlight is adopted as a hygienic measure in
  freeing clothing and household effects from infection. Bacteria
  occur abundantly in sea water at depths of two hundred to four
  hundred metres, and quite a number of species are to be found at
  eight hundred to eleven hundred metres.</p>
  
  <p>The distribution of fungi follows the general habit of bacteria
  in that they thrive best in darkness.</p>
  
  <p>It is to be noticed in this connection that light is also a determining
  factor in the distribution of the higher land plants. Thus
  the amount of light received in polar latitudes is quite insufficient
  for the needs of many species, entirely irrespective of temperature.</p>
  
  <p>The retarding influence of light upon growth is even more
  marked in the lower forms than in the higher. Such action is the
  result of the disintegrating effect of the blue-violet rays upon ferments
  and nitrogenous plastic substances.</p>
  
  <p>The greater massiveness of the bodies of the higher plants enables
  them to carry on the chemical activities in which these substances
  are concerned in the interior, where the intense rays may not
  penetrate. The attenuated and undifferentiated fungi must seek the
  shade, to escape the dangers of strong light, against which they have
  no shield.</p>
  
  <p>The reproductive processes are particularly sensitive to illumination.
  The formation of zo�spores by green felt (<i>Vaucheria</i>) may
  occur only in darkness, at night, or in diffuse light, and these examples
  might be multiplied indefinitely. Many features of the germination
  of spores and the growth of <i>protonem�</i> or <i>prothallia</i> among
  the mosses, liverworts, and ferns are determined by light.</p>
  
  <p>Perhaps the most striking reactions of plants to light are to be
  seen in locomotor and orientation movements.</p>
  
  <p>Locomotor movements are chiefly confined to lower forms, and
  are most noticeable in the “swarm spores,” or zo�spores of the alg�,
  though exhibited by spermatozo�ids as well. Zo�spores may be seen
  collected against the side of the vessel receiving direct sunlight,
  while the opposite side of the vessel will be free from them. The
  chlorophyll bodies of green cells arrange themselves similarly. The
  latter bodies may move away from the exposed side of the cell if
  the light exceeds a certain intensity.</p>
  
  <p>The typical plant may not move its body toward or away from
  the source of light, but it may secure the same end by dispositions of
  its surfaces to vary the angle at which the rays are received. This
  form of irritability is one of the most highly developed properties of
  the plant. Wiesner has found that a seedling of the vetch is sensitive
  to an amount of light represented by one ten-millionth of a
  unit represented by a Roscoe-Bunsen flame. The “sensitiveness”
  to light may take one of three forms: The organ may place its axis
  parallel and pointing toward the source of the rays, as in stems, when
  it is said to be <i>proheliotropic</i>; the axis of the organ may assume a
  position perpendicular to the rays, which is designated as <i>diaheliotropism</i>;
  or it may place its axis parallel to the rays and pointing
  away from the light, when it is said to be <i>apheliotropic</i>. Upright
  stems are proheliotropic, horizontal leaves and creeping stems are
  diaheliotropic, and roots and such stems as those of ivy are apheliotropic.</p>
  
  <p>Sunlight varies from zero to the full blaze of the noonday sun,
  and assumes its greatest intensity in the equatorial regions. The intensity
  in latitudes 40� to 45� north would be represented by 1.5
  units, and at the equator by 1.6 units. Near the equator the intensity
  is so great that an ordinary leaf may not receive the full force of the
  noonday sun without damage. The injury would not result from the
  luminous rays, but from the temperatures, 40� to 50� C., arising
  from the conversion of light into heat. As an adaptation to this
  condition nearly all leaves have either a pendent or a vertical position,
  or the power of assuming this position by motor or impassive
  wilting movements.</p>
  
  <p>Among the plants of the temperate zone the so-called compass
  plants are examples of similar adaptations. The compass plants include,
  among others, the wild lettuce (<i>Lactuca scariola</i>) and rosin
  weed (<i>Silphium laciniatum</i>). These plants place the leaves in a
  vertical position with the tips pointing north and south in such manner
  that the direct rays of the morning and evening sun only may
  strike the surfaces at right angles, while the edges are presented to
  the fierce rays at noonday. That this arrangement is an adaptation
  against the intense light is evident when it is seen that specimens
  growing in shaded locations or in diffuse light place the leaves in
  the typical horizontal position. To meet the functional conditions,
  both sides of the compass leaves are almost equally provided with
  palisade cells for food formation and stomata for transpiration. The
  estimation of the light striking a compass leaf shows that it receives
  approximately the same amount of light as a horizontal leaf during
  the course of a day, but the two maxima of intensity, morning and
  evening, are much below that of the noon of horizontal leaves.</p>
  
  <p>The influence of light upon plants may be briefly summed as
  follows:</p>
  
  <p>Light is necessary for the formation of food substances by green
  plants, and it is an important factor in distribution in land and marine
  forms.</p>
  
  <p>Growth and reproduction are generally retarded by the action of
  the blue-violet rays.</p>
  
  <p>Light is fatal to certain bacteria and other low forms of vegetable
  life.</p>
  
  <p>Many plants have the power of accelerated growth of stems in
  diminished light as an adaptation for lifting the leaves above “shading”
  objects.</p>
  
  <p>The growth of many leaves and of the perianth of flowers is
  hindered in diminished light.</p>
  
  <p>The outward form of many organs, particularly leaves, is dependent
  upon the intensity of the light received.</p>
  
  <p>The internal structure of bilateral or dorsiventral organs is largely
  determined by the direction of the rays.</p>
  
  <p>Plants have the power of movement to adjust their surfaces to a
  proper angle with impinging light rays, as a protective adaptation.</p>
  
  <blockquote>
  
  <p>Matches which do not contain any phosphorus and which take fire by
  friction on any surface�a match that has been long sought�have been
  prepared by Mr. S. A. Rosenthal and Dr. S. J. von Kornocki. It is represented
  that they can be manufactured as cheaply as ordinary matches.</p></blockquote>
  ",
  author_id: User.find_by(username: 'D T MacDougal').id
)
file_009 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/johannes-plenio-278122-unsplash.jpg')
story_009.image.attach(io: file_009, filename: 'johannes-plenio-278122-unsplash.jpg')
story_009.update(created_at: Time.parse("August 3, 1898, 12:00am UTC +0"))


story_010 = Story.create(
  title: 'THE STONE AGE IN EGYPT.',
  lead_in: 'No region in the world presents a clearer and more distinct individual character than Egypt.',
  category: 'Science',
  body: "<p>The investigation of the origin of man in Egypt is a very complex
  problem, belonging as much to geology as to archæology.
  The earliest evidences we have of human industry, in fact, go back
  to so remote a period that they should be regarded rather as fossils
  than as archæological documents. They are very coarsely worked
  flints, which are found near the surface of the ground among the
  pebbles of the Quaternary or Pleistocene epoch, and similar to those
  which occur abundantly in Europe, America, and Asia; but the
  study and collection of them have been pursued with less method
  than in those countries. The more recent monuments, so much more
  conspicuous and more easily accessible, have attracted most attention,
  while these have been left in the background.</p>
  
  <p>No region in the world presents a clearer and more distinct individual
  character than Egypt. Each village is a special world, each
  valley a universe that has developed its own life; and man has felt
  the special local impressions; and even in modern times, while all
  the Egyptian villages present a similar aspect, and although the
  fellah appears to be the same sort of a man everywhere, each locality
  has its special individual characteristics. One who knows how to
  observe men and things critically will find considerable differences.
  These dissimilarities are as old as Egypt itself. They have always
  existed, and are as much more intense as the communications between
  district and district were formerly more difficult. They are
  due to physical conditions special to each village, to the prevailing
  winds, the form and character of the mountains, the extent of cultivable
  lands, and the supply of water. A study of the detail of the
  country is a very important preliminary to the examination of
  Egyptian history. Every village and every nome had formerly its
  special divinity and its particular usages. Are we sure that the gods
  and customs were not imposed by local conditions? At Ombos two
  hostile gods were adored in the same temple. May we not see in
  this fact a recollection of the hostility which has always prevailed
  between the inhabitants of the two banks of the river, and still continues?</p>
  
  <p>Previous, however, to investigating these details which have
  been so influential on Egyptian civilization, we ought to dispel the
  darkness which hides from us the earliest traces of man in the valley
  of the Nile, and examine how man lived in his beginning, to study
  the geology of the country and its condition when it issued from the
  seas. As one of the results of this study we find that palæolithic
  man, known to us only through the rough-cut flints we find in the
  alluvions, made his first appearance. After this period of excavation
  came that of filling up with silt, which still continues. New evidences
  of man appear in his burial places and the ruins of his villages,
  the kitchen middens which he has left in his habitations of
  unburned brick and in his camps. This time he is more civilized; he
  chips his flints with a skill that is not surpassed in European neolithic
  implements; he makes vessels of stone and clay, covers them with
  rude paintings, sculptures animal forms of schist, and wears necklaces
  of the shells and the stones of the country. Then comes a
  foreign people to take possession of Egypt, bringing knowledge of
  metals, writing, hieroglyphics, painting, sculpture, new industries
  and arts that have nothing in common with the arts of the people
  it has overcome. The ancient Pharaonic empire begins, or perhaps
  the reign of the divine dynasties. The men with stone implements
  are the aborigines; the others are the conquering civilized Egyptians.
  Nothing can be more interesting than a comparison of the arts of the
  aborigines and those of the Egyptians of the earlier dynasties.
  Nearly all their characteristics are different, and it is impossible to
  regard them as of common origin. Yet some of the native forms persisted
  till the last days of the empire of the Pharaohs. These
  aborigines belonged to a race that is now extinct, they having been
  absorbed into the mass of the Egyptians and Nubians among whom
  they lived, and from this mixture the fellah of ancient times is derived.
  The origin of the conquering race—of the Egyptians as we
  know them—has not been precisely determined. The weight of evidence,
  so far as it has been obtained, and the balance of opinion, are
  in favor of an Asiatic origin and of primary relationship with the
  Shemites of Chaldea.</p>
  
  <p>In Egypt more than in any other country it is necessary to proceed
  with the most scrupulous circumspection in the examination of
  remote antiquities. The relics of thousands of years of human life
  have been piled one upon another and often intermixed. The questions
  they raise can not be answered in the cabinet or by the study of
  texts; but the inquiry must be prosecuted on the ground, by comparison
  of the deposits where they are found and in the deposits from
  which they are recovered.</p>
  
  <p>From my first arrival in Egypt, in 1892, my attention has been
  greatly occupied with the question of the origin of the relics of the
  stone age that have been found from time to time in that country.
  I have gathered up the scattered documents, explored a large number
  of sites, and have bought such flint implements as I have found on
  sale. I have gradually been led to believe that while some of these
  cut stones may possibly belong to the historical epoch, we shall have
  to attribute a much more remote antiquity to the most of them, and
  that evidences of a neolithic age in the valley of the Nile are more
  abundant than has generally been supposed.</p>
  
  <p>In many minds the historical antiquity of Egypt, the almost
  fabulous ages to which its civilization ascends, seem to challenge the
  history of other countries, and the land of the Pharaohs, rejecting all
  chronological comparison, to have appeared in the midst of the world
  as a single example of a land which savage life had never trodden.
  Yet what are the centuries since Menes ruled over the reclaimed valleys,
  the few thousand years of which we can calculate the duration,
  by the side of the incalculable lapse of time since man, struggling
  with the glaciers and the prehistoric beasts, began his conquest of the
  earth? The antiquity of Egypt, the eight thousand years (if it be as
  many) since the first Pharaoh, are only as an atom in the presence
  of these ages. We can assert some vague knowledge of these pre-Pharaonic
  inhabitants, for two hatchets of the Chellean pattern were
  found some time ago in the desert, one at Esnet, the other near the
  pyramids of Gizeh; and we can now affirm in the most positive manner
  that Quaternary man lived in the country which is now Egypt, and
  was then only preparing to be. Four palæolithic stations have been
  more recently discovered—at Thebes, Tukh, Abydos, and Daschur.
  Join these sites to the other two where isolated pieces were found, and
  we have the geography of what we know at present of Chellean man
  in the valley of the Nile. Doubtless continuous researches would
  result in similar discoveries at other points, for I have met these
  relics wherever I have been able to make a short sojourn. The
  Chellean implements are found in the gravels of the diluvium on
  the pebbly surface. They have been disturbed and probably scattered,
  but some places yield them more numerously than others—points
  possibly corresponding to the ancient workshops. I have
  found a considerable number of specimens at Deir-el-Medinet; M.
  Daressy, of the Bureau of Antiquities, found a perfectly characteristic
  Chellean hammer stone in the Yalley of the Queens at Gurneh, as
  perfectly worked as the best specimens found at Chelles, St. Acheul,
  and Moulin-Quignon.</p>
  
  <p>The finds are not very numerous at Tukh, but one may in a
  few hours make a collection there of hatchets (or hammer stones),
  scrapers, points, simple blades, and a large number of stones bearing
  indisputable marks of having been worked, but not presenting
  precise forms. The deposit at Abydos is in the bottom of a circle
  behind the ruins surrounding the Pharaonic necropolis. The specimens
  seem sufficient to prove the existence of Quaternary man in
  Egypt, while the search for them has hardly yet begun. In view of
  them it is extremely improbable that man did not also exist there
  during the long period that intervened between this primitive age
  and that of the earliest Egyptians who had metals. He did exist
  there then, and the evidences of it are found in neolithic
  remains between Cairo and Thebes, a distance of about eight hundred
  kilometres along the valley of the Nile, in the Fayum, and
  in Upper Egypt. Among these are the remarkable tombs at Abydos
  which have been explored by M. E. Amælineau, and of which he has
  published descriptions. They belong to a category which I have
  characterized as tombs of transition and as signalizing the passage
  from the use of polished stone to that of metals. Their archaic character
  can not be disputed, and their royal origin is probably certain.
  They may belong to aboriginal kings or to the earliest dynasties.
  They reveal a knowledge of brass and of the use of gold for ornament.
  At the necropolis of El-’Amrah, a few miles south of Abydos,
  are some archaic tombs, all of the same model, composed of an
  oval trench from five to six and a half feet deep. The body is laid
  on the left side, and the legs are doubled up till the knees are
  even with the sternum; the forearms are drawn out in front and
  the hands placed one upon the other before the face, while the head
  is slightly bent forward. Around the skeleton are vases, and large,
  rudely made urns, often filled with ashes or the bones of animals, and
  nearer to them are painted or red vessels with black or brown edges,
  vessels roughly shaped out of stone, and figurines in schist representing
  fishes or quadrupeds, cut flints, alabaster clubs, and necklaces
  and bracelets of shells. Bronze is rare, and found always in shape
  of small implements. Both purely neolithic tombs and burials of the
  transition period to metals occur at El-’Amrah. The most remarkable
  feature of the burials is the position of the corpse, totally unlike anything
  that is found of the Pharaonic ages.</p>
  
  <p>The Egyptian finds of stone implements present the peculiarity
  as compared with those of Europe, that types are found associated
  together belonging to what would be regarded in other countries as
  very different epochs. The time may come when subdivisions can
  be made of the Egyptian stone age, but the study has not yet been
  pursued far enough to make this practicable at present. Among
  these articles are hatchets showing the transitions, examples of which
  are wanting in Europe, from the rudest stone hammer to the polished
  neolithic implement; knives of various shape and some of handsome
  workmanship; scrapers, lance heads, arrowheads, saws, pins,
  bodkins, maces, beads, bracelets, and combs. The large number of
  instruments with toothed blades found at some of the stations may
  be regarded as pointing to a very extensive cultivation of cereals at
  the time they were in use. The deposits of Tukh, Zarra—dah, Khattarah,
  Abydos, etc., situated in regions suitable for growing grain,
  yield thousands of them, while they are very rare at the fishing
  station of Dimeh. That the use of sickles tipped with flint very
  probably lasted long after the introduction of metals seems to be
  proved by the hieroglyphics; but very few evidences of the existence
  of such tools are found after the middle empire.</p>
  
  <p>No traces of articles related to the religion of the Pharaohs are
  found in the burial places of the aborigines. In place of the statuettes
  and funerary divinities of later times are found rude figurines
  of animals cut in green schists. They represent fishes, tortoises with
  eyes adorned with hard stone or nacre, and numerous signs the origin
  of which is unknown, and were apparently regarded as fetiches or
  divinities. Articles of pottery are very numerous, very crude, and of
  a great variety of forms. It is not necessary to suppose that the people
  who have left these relics were savages or barbarians. History
  and even the present age afford instances of many peoples who have
  obtained considerable degrees of civilization while backward in some
  of the arts. It is hardly possible to achieve delicacy of design and
  finish without the use of metals. I believe I have shown that an
  age of stone once existed in Egypt, and that it furthermore played
  an important part, even in Pharaonic civilization.—<i>Translated for
  the Popular Science Monthly from the Author’s Recherches sur les
  Origines de l’Egypte.</i></p>
  ",
  author_id: User.find_by(username: 'J De Morgan').id
)
file_010 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/martin-widenka-493231-unsplash.jpg')
story_010.image.attach(io: file_010, filename: 'martin-widenka-493231-unsplash.jpg')
story_010.update(created_at: Time.parse("August 3, 1898, 12:00am UTC +0"))


story_011 = Story.create(
  title: 'CAGLIOSTRO, THE MAGICIAN.',
  lead_in: 'Under the common tent, the great canopy of life, it would not be fair to prejudge the mind',
  category: 'Biography',
  body: "<p>“Know, then, that in the year 1743, in the city of Palermo, the family
  of Signor Pietro Balsamo, a shopkeeper, were exhilarated by the birth of
  a boy. Such occurrences have now become so frequent, that, miraculous as
  they are, they occasion little astonishment;” and, it may be well to
  add, that, except in some curious cases, there is no longer that
  exhilaration now felt, but, as in Ireland, a leaden sense of future woe.
  We are not told by the parents that any strange or miraculous appearance
  attended or preceded this advent, though one cannot but believe that the
  future Archimagus and his followers must have had a more or less
  distinct opinion upon this point. Not to lose time in speculation, we
  learn that ”we have here found in the Count Alessandro di Cagliostro
  (the above-named boy), pupil of the sage, Altholas—foster-child of the
  Scherif of Mecca—probable son of the last king of Trebizond; named also
  Acharat, and unfortunate child of nature; by profession, healer of
  diseases, abolisher of wrinkles, friend of the poor and impotent,
  grand-master of the Egyptian Mason lodge of High Science, spirit
  summoner, gold cork, grand cophta, prophet, priest, and thaurmaturgic
  moralist and swindler; really a liar of the first magnitude;
  thorough-paced in all provinces of lying, what one may call their king.”</p>
  
  <p>Under the common tent, the great canopy of life, it would not be fair to
  prejudge the mind of the reader upon so grave a thing as character,
  which we are now considering—it might be best to let each come to an
  after-thought respecting it—upon our caustic and noble author let the
  blame, if any, hang, while we now proceed to dip in, here and there, to
  his magic page.</p>
  
  <p>As the boy grows, we learn, that ”as he skulks about there, plundering,
  pilfering, playing dog’s-tricks, with his finger in every mischief, he
  already gains character. Shrill housewives of the neighborhood, whose
  sausages he has filched, whose weaker sons maltreated, name him Beppo
  Maldetto, and indignantly prophecy that he will be hanged—a prediction
  which the issue has signally falsified.” We also may learn, what, in the
  treatment of our whole subject it is extremely important to remember,
  that, in the ”boy,” a ”brazen impudence developes itself, the crowning
  gift,” &amp;c. ”To his astonishment,” though, ”he finds that even here he is
  in a conditional world, and if he will employ his capability of eating
  (or enjoying) must first, in some measure, work and suffer. Contention
  enough hereupon; but now dimly arises, or reproduces itself, the
  question. Whether there were not a <i>shorter</i> road—that of stealing!”</p>
  
  <p>But how he was entered into the convent, and under the convent
  apothecary proceeded to learn certain arts and mysteries of the retorts
  and alembics (which lucky knowledge, after that, came to use), while he
  was learning his other trade of monkery and mass-chanting, we will omit.
  It is enough to know, that he would not answer for the convent, and was
  again afloat on the wide sea of existence. That he floated is certain;
  for ”he has a fair cousin living in the house with him, and she again
  has a lover. Beppo stations himself as go-between; delivers letters;
  fails not to drop hints that a lady to be won or kept must be generously
  treated; that such and such a pair of ear-rings, watch, or sum of money,
  would work wonders: which valuables, adds the wooden Roman biographer,
  he then appropriated furtively.” Slowly but certainly he makes his way:
  ”tries his hand at forging” theatre tickets—a will even, ”for the
  benefit of a certain religious house;” and, further on, can tell
  fortunes, and show visions in a small way—all these inspirations are
  vouchsafed him, or, rather, these things he is permitted to do, and
  others not to be mentioned here.</p>
  
  <p>It is well to note, that in all times, and among all peoples, there is a
  deep and profound conviction that there <i>is</i> not only a ”short and
  certain” way of getting to heaven, and to know the eternal truths, but
  also that these earthly treasures do exist, in untold quantity, in the
  elements; and if one could only discover the secret by which the gases
  could be condensed into solid gold, or the gnomes be persuaded or
  compelled to give them up, ready solidified to hand, it would at least
  save time and be satisfactory. It is only curious, as a matter of
  speculation, to know what we shall eat when the lucky age arrives, and
  spirits will do our bidding in this matter of gold and diamonds. The
  ”boy,” as he grew, discovered this world-wide capacity; and who should
  have this power of setting the ”spirits” to work but he?</p>
  
  <p>”Walking one day in the fields with a certain ninny of a goldsmith,
  named Marano, Beppo begins in his oily voluble way to hint that
  treasures often lay hid; that a certain treasure lay hid there (as he
  knew by some pricking of his thumbs, divining rod, or other talismanic
  monition), which treasure might, by the aid of science, courage,
  secrecy, and a small judicious advance of money, be fortunately lifted.
  The gudgeon takes—advances, by degrees, to the length of ’sixty gold
  ounces’—sees magic circles drawn in the wane or the full of the moon,
  blue (phosphorous) flames arise—split twigs auspiciously quiver—and at
  length demands, peremptorily, that the treasure be dug!”</p>
  
  <p>Alas! why is it that the ”spirits” so often fail us at our sorest need?
  Do <i>they</i> deceive us; and, if not, who does? The treasure vanishes, or
  does not appear, ”the conditions are imperfect,” and the ”ninny of a
  goldsmith” being roughly handled by these spiritual visitants,
  threatens to stiletto the adept; who, overcome with the ingratitude of
  the world, concludes to quit;—at least, in the words of his Inquisition
  biographer, ”he fled from Palermo, and overran the whole earth.”</p>
  
  <p>We may see how he has grown—how, as in ordinary mortals, he advances
  step by step—even he, the favorite son of the higher intelligences,
  learns as he goes. How is it, then, that we can have no full-grown
  inspiration; that we know of no perfection—that we only go on towards
  it? Can it be that prophets and priests really do <i>learn</i>, and that even
  now, men may grow into the future? Might not a more thorough and
  scientific seminary for this purpose be established than any we now
  have—theologic, thaumaturgic, theosophic, or other variety? It is a
  question easier asked than answered.</p>
  
  <p>”The Beppic Hegira brings us down in European history to somewhere about
  the period of the peace of Paris”—(a.d. ——), supervening upon which
  is a portentous time—”the multitudinous variety of quacks that, along
  with Beppo, overran all Europe during that same period—the latter half
  of the last century. It was the very age of impostors, cut-purses,
  swindlers, double gaugers, enthusiasts, ambiguous persons, quacks
  simple, quacks compound, crack-brained or with deceit prepense, quacks
  and quackeries of all colors and kinds. How many mesmerists (so speaks
  this strange author), magicians, cabalists, Swedenborgians, illuminati,
  crucified nuns, and devils of Loudun! To which the Inquisition
  biographer adds vampyres, sylphs, rosicrucians, free-masons, and an <i>et
  cetera</i>. Consider your Schropfers, Cagliostros, Casanovas, Saint
  Germains, Dr. Grahams, the Chevalier d’Eon, Psalmanazar, Abb— Paris, and
  the Ghost of Cock-lane!—as if Bedlam had broken loose!”</p>
  
  <p>The great, the inexplicable, the mysterious Beppo, being now fairly
  afloat, let us try to comprehend how he has begun to touch upon the edge
  of those trade winds, which shall drive him along toward the golden
  Indies, Ophir, and the land of promise, for which the men of this world
  do so hunger and thirst.</p>
  
  <p>He married a beautiful Seraphina, afterward countess, graceful and
  lady-like, once the daughter of a girdle-maker, and named Lorenza
  Feliciani. Every one, simple or sedate, knows that it is best to hunt in
  couples. What one has not the other may have. So Seraphina had beauty,
  lightness, buoyancy, and could float up her count when the demons and
  harpies of a certain troublesome devil, called law or justice, seemed
  bent upon his swift destruction. Could she not, too, ”enlist the
  sympathies of admiring audiences”—by her sweet smiles and ”artless
  ways,” gain belief, and ”a wish to believe?” More than that, could she
  not turn the heads of young and old? ”noble” perhaps, perhaps
  ”ignoble”—”moneyed do-nothings” (so says this writer), whereof in this
  vexed earth there are many, ever lounging about such (?) places—scan
  and comment on the foreign coat-of-arms—ogle the fair foreign woman,
  who timidly recoils from their gaze, timidly responds to their
  reverences, as in halls and passages they obsequiously throw themselves
  in her way. Ere long, one moneyed do-nothing (from amid his tags,
  tassels, sword-belts, fop-tackle, frizzled hair, without brains beneath
  it) is heard speaking to another—”Seen the countess?—divine creature
  that!” Indeed, one cannot but wonder that any should question the unity
  of the race, at least, of those known as ”civilized.” In a small way, or
  in a large way, how this thing ever goes on—on church steps, on
  Broadways, in Metropolitan Halls, Congresses, the Palais-Royal, at home
  and abroad! And men do yet call <i>this</i> ”reverence for the sex,” and holy
  sentiment; and indulge in hallelujahs to that hoary myth, ”a gentleman
  of the old school;” while women—God help us—women loving it, hate
  those who, hating it, hate hollowness and hell. With slight imagination,
  then, one may see how important an element this ”divine creature” must
  have become in any conjuration or mystic ”renovation of the universe,”
  which the high mystagogue might be impressed to set on foot. Enough,
  that <i>she</i> helped and learned the arts of prophecy and perfection faster
  than her master! But we read—alas! alas!—”As his seraphic countess
  gives signs of withering, and one luxuriant branch of industry will die
  and drop off, others must be pushed into budding.” He, the indefatigable
  count, is not idle. ”Faded dames of quality (over all Europe, all
  creation) have many wants: the count has not studied in the convent
  laboratory, or pilgrimed to the Count St. Germain, in Westphalia, to no
  purpose. With loftiest condescension he stoops to impart somewhat of his
  supernatural secrets—for a <i>consideration</i>. Rowland’s Kalydor is
  valuable; but what to the beautifying water of Count Alessandro! He that
  will undertake to smooth wrinkles, and make withered, green parchment
  into a fair carnation skin, is he not one whom faded dames of quality
  will delight to honor? Or, again, let the beautifying-water succeed or
  not, have not such dames (if calumny may in aught be believed) another
  want? This want, too, the indefatigable Cagliostro will supply—for a
  consideration. For faded gentlemen of quality the count likewise has
  help. Not a charming countess alone, but a ”wine of Egypt” (Cantharides
  not being unknown to him), sold in drops, more precious than nectar;
  which, what faded gentlemen of quality will not purchase with any thing
  short of life. Consider, too, what may be done with potions, washes,
  charms, love-philters, among a class of mortals idle from their mother’s
  womb,” &amp;c., &amp;c.</p>
  
  <p>It is well to know, once for all, that the count, chief-priest of his
  order—which yet thrives, and if not great, deserves to be called for
  its number, Legion—made money out of this his enterprising trade; that
  he was enabled to pay his way; to ride post with the ever potent
  ”voucher of respectability, a coach-and-four,” with out-riders and
  beef-eaters, and couriers and lackeys, and the other paraphernalia which
  the greedy tooth of man desires—which helps one forward so far toward
  happiness, provided always that ”there <i>is</i> no heaven above and no hell
  beneath,” of which let each first make sure; and more than all, let such
  as wish to travel this road, take great courage from the contemplation
  of this one model.</p>
  
  <p>We must hasten to the year 1776, a year rather noted in our annals, and
  in that of England, perhaps, independently of this the ”first visit” of
  the famed Count Cagliostro to its shores, which happened then. Should it
  have so chanced that he had lived now, would he have stopped there does
  the reader think? Having an insight into <i>their</i> national character, and
  finding ”great greed and need,” and but small heed, what might he not
  have done on this transatlantic shore, whose free people can so nobly
  cherish even its Barnum, its——, its——! But let names go. We make the
  most of what we have, and if not equal to the greatest, the fault rests
  not on our shoulders. We are not responsible for the past, if for the
  present or future.</p>
  
  <p>’Twas in England that the master developed most bravely the art of
  prophecy; perhaps finding there a demand for his supply—such, according
  to some, being the only law of God or man. It is enough to know that he
  does a trade in foretelling the lucky lottery numbers by means of his
  ”occult science,” whereby at least he put money in <i>his</i> purse, and
  satisfied good-natured men that as there were gulls, and necessarily a
  guller, he above all others deserved praise and not blame; the whole
  thing, this life, being really a juggle, and the smartest fellow of
  course the best juggler. As man goes on he developes, so many think—so
  did Cagliostro, and in his growth he reaches to masonry—Egyptian
  masonry—and in ”sworn secrecy” finds a new Talisman, for which men will
  pay five guineas each. He resolves to ”free it from all vile
  ingredients, and make it a new Evangile.” ”No religion is excluded from
  the Egyptian society”—for is it not certain that religion <i>pays</i>?
  Charity too, pays, as we shall see by-and-by. No religion is
  tabooed—none—all who admit the existence of a God, and the immortality
  of the soul, may, for the small sum of five guineas, be certain to gain
  ”perfection by means of a physical and moral regeneration.” He promises
  them by the former or physical to find the <i>prime matter</i> or
  philosopher’s stone, and the <i>acacia</i> which consolidates in man the
  forces of the most vigorous youth, and renders him immortal; and by the
  latter or moral, to procure them a Pentagon which shall restore man to
  his primitive state of innocence, lost by his original sin. It must be
  understood that this masonry was founded by Enoch and Elias, had been
  corrupted by the Egyptian priests, but was now restored to its pristine
  vigor by its last and greatest Grand Cophta, and includes not only men
  but women, of whom the Countess Seraphina is Cophtess.</p>
  
  <p>We cannot do better than to gain some insight into the forms and
  symbolic practices of these worshippers; and especially will those who
  desire to practise this or any short and easy way to perfection or
  happiness, be glad to learn what has been done, and thus be encouraged
  to begin.</p>
  
  <p>In the <i>Essai sur les Illumin—s</i>, printed in Paris in 1789, are the
  following details quoted by this before-mentioned known author. These
  bear an air of truth and probability which will win for them easy
  admission. Many of them are not unlike what we have seen amongst us
  during the few past years.</p>
  
  <p>”They take a young lad or a girl who is in the state of innocence: such
  they call the <i>Pupil</i> or <i>Colomb</i>: the Venerable communicates to him the
  power he would have had before the fall of man; which power consists
  mainly in commanding the pure spirits: these spirits are to the number
  of seven. It is said they surround the shrine, and that they govern the
  seven planets. Their names are Arael, Michael, Raphael, Gabriel, Uriel,
  Zobiachel, Anachiel.” Nothing certainly can begin more favorably. We
  learn that ”she the Colomb,” can act in two ways, either behind a
  curtain, behind a hieroglyphically-painted screen with table and three
  candles, or before the Caraffe and showing face. If the <i>miracle fail</i>
  it can only be because she is not ”in the state of innocence.” <i>An
  accident must be guarded against.</i> Surely our mystic professors, both
  clerical and lay, will take heed to these things. Much may be learned.</p>
  
  <p>Cagliostro accordingly (it is his own story) brought a little boy into
  the lodge, son of a nobleman there. He placed him on his knees before a
  table, whereon stood a bottle of pure water, and behind this some
  lighted candles. He made an exorcism round the boy, put his hand on
  head, and both in this attitude addressed their prayers to God for the
  happy accomplishment of the work. Having then bid the child look into
  the bottle, directly the child cried that he saw a garden. Knowing
  hereby that Heaven assisted him [why this is so proven he does not
  explain], Cagliostro took courage, and bade the child ask of God the
  grace to see the Archangel Michael. At first the child said, ”I see
  something white; I know not what it is.” Then he began jumping and
  stamping like a possessed creature, and cried, ”Now, I see a child like
  myself, which seems to have something angelical (!)” <i>All the assembly
  and Cagliostro himself remained speechless with emotion....</i> [How like
  this is to what we at this day have seen.] The child being anew
  exorcised with the hands of the Venerable on his head, and the customary
  prayers addressed to Heaven, he looked into the bottle, and said he saw
  his sister at that moment coming down stairs, and embracing one of her
  brothers. That appeared impossible, the brother in question being then
  hundreds of miles off. However Cagliostro felt not disconcerted; said
  they might send to the country-house, where the sister was, and see—if
  they chose!</p>
  
  <p>Do some still doubt? Time nor paper will allow us to allay that doubt.
  We must, as rapidly as we can, introduce what may yet be useful in
  certain cases of the like kind, either in whole or in part. It is the
  introduction of a novice into the holy Mysteries.</p>
  
  <p>”The recipiendary is led by a darksome path into a large hall, the
  ceiling, the walls, the floor of which are covered by a black cloth,
  sprinkled over with red flames and menacing serpents; three sepulchral
  lamps emit from time to time a dying glimmer, and the eye half
  distinguishes, in this lugubrious den, certain wrecks of mortality
  suspended by funeral crapes; a heap of skeletons forms in the centre a
  sort of altar; on both sides of it are piled books; some contain menaces
  against the perjured; others the deadly narrative of the vengeance which
  the invisible spirit has exacted; of the infernal evocations for a long
  time pronounced in vain.</p>
  
  <p>”Eight hours elapse. Then phantoms, trailing mortuary vails, slowly
  cross the hall and sink in caverns, without audible noise of trapdoors
  or of falling. You notice only that they are gone by a fetid odor
  exhaled from them.</p>
  
  <p>”The novice remains four and twenty hours in this gloomy abode, in the
  midst of a freezing silence. A rigorous fast has already weakened his
  thinking faculties. Liquors prepared for the purpose first weary and at
  length wear out his senses. At his feet are placed three cups, filled
  with a drink of a greenish color. Necessity lifts them to his lips:
  involuntary fear repels them.</p>
  
  <p>”At last appear two men: looked upon as the ministers of Death. These
  gird the pale brow of the recipiendary with an auroral-colored-ribbon
  dipped in blood, and full of silvered characters mixed with our lady of
  Loretto. He receives a copper crucifix, of two inches length: to his
  neck are hung a sort of amulets wrapped in violet cloth. He is stripped
  of his clothes; which two ministering brethren deposit on a funeral
  pile, erected at the other end of the hall. With blood on his naked body
  are traced crosses. In this state of suffering and humiliation, he sees
  approaching with large strides five Phantoms armed with swords, and clad
  in garments dropping blood. Their faces are vailed: they spread a velvet
  carpet on the floor; kneel there, pray; and remain with outstretched
  hands crossed on their breasts, and faces fixed on the ground in deep
  silence. An hour passes in this painful attitude. After which fatiguing
  trial, plaintive cries are heard; the funeral pile takes fire, yet casts
  only a pale light; the garments are thrown on it and burnt. A colossal
  and almost transparent figure rises from the very bosom of the pile. At
  sight of it the five prostrated men fall into convulsions insupportable
  to look on: the too faithful image of those foaming struggles wherein a
  mortal, at hand-grips with a sudden pain, ends by sinking under it.</p>
  
  <p>”Then a trembling voice pierces the vault, and articulates the formula
  of those execrable oaths that are to be sworn: my pen falters: I think
  myself almost guilty to retrace them.”</p>
  
  <p>Strange as it may seem, we stop here with Monsieur the Author. Strange
  too that some deny the reality of all this—and tell of magic lanterns
  and science—stranger still that men are who believe all—all—’tis to
  them a spasmodic miracle, and he is an infidel of course who doubts.
  Strange too is it, that men do not see here the monstrous power of what
  is called Symbolism, and that they should not help nor hinder; who say,
  Let the world go—who cares! Men live and women too who say, ”There’s
  <i>something</i> in it”—there must be! and is there not? Figure now all this
  boundless cunningly devised agglomerate of royal arches, deaths’ heads,
  hieroglyphically painted screens, ”columns in the state of innocence,
  with spacious masonic halls—dark, or in the favorablest theatrical
  light-and-dark: Kircher’s magic lantern, Belshazzar handwritings (of
  phosphorus), plaintive tones, gong-beatings, hoary head of a
  supernatural Grand Cophta emerging through the gloom—and how it all
  acts, not only directly through the foolish senses of men, but also
  indirectly connecting itself with Enoch and Elias, with philanthropy,
  immortality,” &amp;c. Let such as <i>will</i> now say there is nothing in
  it—something there is, for a thoughtful man to consider well of, asking
  himself what also does this of clairvoyance, and spiritual knockings,
  and Jenny-Lind manias, and Jerkers—truly mean? and what kind of a
  person am <i>I who have had</i> part and lot with these?</p>
  
  <p>But the lofty science of Egyptian Masonry flourishes, lodges are
  established over Europe, and the Grand Master travels hither and
  thither, ”mounts to the seat of the Venerable, and holds high discourse,
  hours long, on masonry, morality, universal science, divinity, and
  things in general,” with a ”sublimity, and emphasis and unction,”
  proceeding it appears ”from the special inspiration of the Holy Ghost.”
  He is received with shouts and exultation—every where the great heart
  of man thrills at the coming of this mystic symbol, which
  contains—cunningly enfolded, as their eyes can and do see—every
  virtue, every greatness—is he not indeed the Incarnation of these, and
  therefore to be worshipped; such gift of reverence is in the heart of
  man, and to such things does he again and again bow down!</p>
  
  <p>To go on. Cheers, and the ravishment of thronging audiences can make him
  maudlin; render him louder in eloquence of theory; and ”philanthropy,”
  ”divine science,” ”depth of unknown worlds,” ”finer feelings of the
  heart”—and so shall draw tears from most asses of sensibility. ”The few
  reasoning mortals scattered here and there, that see through him,
  deafened in the universal hub-bub, shut their lips in sorrowful disdain,
  <i>confident in the grand remedy, Time</i>.” So says our author, and can we
  blame him? Will the reader allow the current of this prosperity to be
  checked for one moment by a certain Count M.? One of the chosen few at
  Warsaw, who having spent the night with the ”dear Master,” in conversing
  with spirits, had returned to the country to transmute metals
  perhaps—perhaps to do other mighty works. Count M. seems to have been
  afflicted with doubts, to have supposed that by sleight-of-hand the
  ”sweet Master” had substituted the crucible with melted ducats, for the
  other—carefully filled with red lead, ”smelted and set to cool,” ”and
  now found broken and hidden among these bushes”—the whole golden
  crucible standing in its place. ”Neither does the Plenagon or Elixir of
  Life, or whatever it was, prosper better—our sweet master enters into
  expostulation—swears by his great God, and his honor, that he will
  finish the work and make us <i>happy</i>.” In vain—”the shreds of the broken
  crucible lie there before your eyes”—and the usurper has its place.
  That ”resemblance of a sleeping child, grown visible in the magic
  cooking of our Elixir, proves to be an inserted rosemary leaf. The Grand
  Cophta cannot be gone too soon.”</p>
  
  <p>Already it has been said that ”Charity pays,” philanthropy, benevolence,
  all these—sometimes? if one sows his bread on the waters shall he not
  expect its return after many or after few days?—the sooner the better
  for your Cagliostros, your Barnums. Shout it daily to an envious
  world—”Am I not a charitable man? If I have done wrong myself (as who
  has not?) has not a great deal of good <i>grown out</i> of my wickedness? I
  have therefore done my share, for which if the world has paid me in
  ’praise and pudding,’ it is no more than it has done before, and will do
  again!” Take courage!</p>
  
  <p>Cagliostro doctors—heals—the poor, for nothing!—even gives them
  alms—does a great deal of good—who but he? At Strasburg in the year
  1783 (year of our peace with England), he ”appears in full bloom and
  radiance, the envy and admiration of the world. In large hired
  hospitals, he with open drug-box (containing ’Extract of Saturn’), and
  even with open purse, relieves the suffering poor; unfolds himself
  lamblike, angelic, to a believing few, of the rich classes. Medical
  miracles have at all times been common, but what miracle is this of an
  occidental or oriental Serene-highness that ’regardless of expense,’
  employs himself in curing sickness, in illuminating ignorance?” We at
  the present day know nothing like it; the mere giving of a few surplus
  hundreds or thousands to certain Slavery, Anti-Slavery, Peace,
  Temperance or other societies, is benevolence of the ”rocking chair”
  species—is not to be mentioned with this, of the self-denying
  Cagliostro’s diving into cellars, and mounting into garrets, to seek and
  to save—at the risk of not only life but comfort—the first of which
  happily was not thus sacrificed:—nor indeed on the whole was comfort
  lost sight of, as the ”coach-and-four with liveries and sumptuosities
  bears witness.” There is often profound wisdom in this thing called
  <i>public</i> or newspaper charity. Does it—or does it not—pay?</p>
  
  <p>The favorite of the gods, he who holds high discourse with spirits, and
  to whom is opened the hidden secret of earth and heaven, finds ready
  acceptance—backed as he is by charities, by elegancies: finds
  acceptance with the poor, the ignorant to whom he ministers—but also
  ”with a mixture of sorrow and indignation” it is recorded, among the
  great—and not only they, but among the learned, ”even physicians and
  naturalists.” It does not seem worth while to expend sorrow and
  indignation upon this fact, not at all new, as we now fifty years
  farther along have discovered; for we can show our physicians and
  naturalists, and also our priests and prophets, in small crowds with
  whom marvels find acceptance. We shall see more of them by and by.</p>
  
  <p>But one among the rich and great, was the Cardinal Prince Count Rohan,
  Archbishop of Strasburg. ”Open-handed dupe,” as some term him—now out
  of favor with the Queen Marie Antoinette (after that beheaded and called
  unfortunate). Banished from his beloved Paris and the sunshine of
  royalty, what should he do but to regain his pedestal? necessary no
  doubt, for the glory of God, and his church; necessary at least for the
  Count Rohan. Cagliostro is all powerful—he will help the Cardinal
  Prince—not only by philters and charms, but by prophecies from the
  gods, who speaking through their earthly oracle, will of course (it
  paying best), promise success and not failure. The Archbishop tries all
  things, and at last the far-famed ”diamond necklace,” upon the queen,
  which no woman’s heart can withstand, not even the queen’s. Sad to tell,
  the miserable queen knew nothing of the necklace; and only the Md’lle De
  la Motte, styled countess, by superior arts had outjuggled Cagliostro
  himself, Cardinal Rohan, queen and all: the diamonds were gone—the
  queen’s character blackened, cardinal, cophta, and countess, all in the
  Bastille, where they lay some nine months (year 1781), disastrous
  months, when ”high science” wasted itself in eating out its own heart.
  Cagliostro escaped, was let go—but a plundered, banished, suspected
  high priest, was quite another thing from a golden cophta, with the
  foreign coat-of-arms, serene countess—and open purse relieving the
  unfortunate.</p>
  
  <p>Cagliostro now flits to England, to Bale, to Brienne, to Aix, to Turin,
  he wanders hither and thither; we cannot follow him. The end of all, the
  lofty and the low, must come—that seems drawing near to Cagliostro
  too—but how? not in ruddy splendor as of departing day, not quiet,
  serene, as of nature sinking to rest—rather like the disastrous death
  of the bleeding shark it seems: his brethren, his friends—- sharks of
  his own kind, of all kinds, high and low—rush upon the wounded shark,
  as to a banquet to which they were bidden. He is exiled here, he is
  persecuted there—imprisonment, despair, degradation haunt him—the
  houseless, unfortunate—now vagabond, once renovator of the human race,
  and friend of lords and friend of gods and princes. Such is gratitude!
  such is popular favor! a thing to be bought and bargained for, to be
  given when <i>not needed</i>. Such, no doubt, Cagliostro decided!</p>
  
  <p>He is sore bested, and begins ”to confess himself to priests,” for a man
  must do something in his extremity. It avails him not; he is at last in
  the gripe of the holy Inquisition at Rome, ”in the year of our Lord,
  1789, December 29,” and must match himself with a power which this world
  knows something of: face to face, hand to hand, at last. Have they
  juggles equal to his juggles, miracles equal to his—high science equal
  to his—legions of angels equal to his?—enough that they have dungeons,
  and sbirri—and in his case, hearts harder than the nether
  mill-stone—not to be softened ”by demands for religious
  books”—assertions of the divinity of the Egyptian Masonry—promises of
  wonderful revelations—oaths, flatteries, or any of the mystic
  paraphernalia of the now powerless professor and prophet: they will not
  let him out! but rather will introduce him to a new art, that of
  becoming a Christian, and get him, the toughest in a tough time, into
  heaven as they best can. Did they find Loyola’s twenty days sufficient,
  and was the article then turned out of hand complete for that other
  state? The Inquisition biographer does not dwell upon this, it was
  perhaps as well. We learn at last that he died in the year 1795, and
  went, the writer says, ”<i>Whither</i> no man knows!” So ended a Magician!</p>
  ",
  author_id: User.find_by(username: 'Charles Wyllys Elliot').id
)
file_011 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/mervyn-chan-262968-unsplash.jpg')
story_011.image.attach(io: file_011, filename: 'mervyn-chan-262968-unsplash.jpg')
story_011.update(created_at: Time.parse("Feb 21, 1852, 12:00am UTC +0"))


story_012 = Story.create(
  title: 'BITTER WORDS.',
  lead_in: 'Bitter words are easy spoken',
  category: 'Literature',
  body: "<p>Bitter words are easy spoken;</p>
  <p>   Not so easily forgot;</p>
  <p>Hearts it may be can be broken—</p>
  <p>   Mine cannot!</p>
  <br>
  <p>When thou lovest me I adore thee;</p>
  <p>   Hating, I can hate thee too;</p>
  <p>But I will not bow before thee—</p>
  <p>   Will not sue!</p>
  <br>
  <p>Even now, without endeavor,</p>
  <p>   Thou hast wounded so my pride,</p>
  <p>I could leave thee, and for ever—</p>
  <p>   Though I died!</p>
  ",
  author_id: User.find_by(username: 'R H Stoddard').id
)
file_012 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/kelly-sikkema-530092-unsplash.jpg')
story_012.image.attach(io: file_012, filename: 'kelly-sikkema-530092-unsplash.jpg')
story_012.update(created_at: Time.parse("Feb 21, 1852, 12:00am UTC +0"))


story_013 = Story.create(
  title: 'THE MURDER OF LATOUR.',
  lead_in: 'So intent were the respective combatants, either in retreat or pursuit, that the whole tempest of war swept over the Hof, and left that square, for a short time, deserted and silent.',
  category: 'Literature',
  body: "<p>The cabinet remained in deliberation at the Ministry of War, situated at
  the corner of the square called the Hof. The tide of insurrection now
  rose to an unconquerable height. The nearest shots of the retiring
  cannons, the advancing shouts of the infuriated people, warned the
  ministers that all defence was rapidly becoming hopeless. The building
  itself still offered some means of resistance, and there were two
  cannons in the court; but at that crisis was issued a written order,
  signed by Latour and Wessenberg, ”to cease the fire at all points,” and
  given to officers for distribution. It was in vain. The popular
  torrent rolled on toward the seat of government, which was destined ere
  long to be disgraced by atrocious crime. The minister of war, Count
  Latour, prepared for defence. The military on guard in front of the war
  office were withdrawn into the yards, with two pieces of artillery
  loaded with grape. The gates were closed, the military distributed to
  the different threatened points, and the cannons directed towards the
  two gates; soon the scene of battle had reached the Bogner Gasse,
  immediately under the windows of the war department; the ministers in
  consultation heard the cry, ”The military retreat.” The great square of
  the Hof was soon cleared, the soldiers retiring by the way of the
  Freyung. The guards and academic legion pursuing; the military
  commander’s quarters in the Freyung are soon captured. The retiring
  military not being able to escape through the Schotten-Thor, as they had
  expected, that gate being closed and barricaded, they cut their way
  through the Herrn Gasse.</p>
  
  <p>So intent were the respective combatants, either in retreat or pursuit,
  that the whole tempest of war swept over the Hof, and left that square,
  for a short time, deserted and silent.</p>
  
  <p>But that stillness was but of short duration; a few moments only had
  elapsed, when a number of straggling guards, students, and people, came
  stealing silently from the Graben, through the Bogner, Naglus, and
  Glosken Gasse, on to the Hof, and removed the dead and the wounded into
  the neighboring dwellings, and into the deserted guard-house in the war
  department. These were soon followed by a fierce and noisy mob, armed
  with axes, pikes, and iron bars, which halted before the war office, and
  began to thunder at its massive doors.</p>
  
  <p>The officer of ordnance in vain attempted to communicate to the crowd
  the order of the ministry, that all firing should cease. A member of the
  academic legion, from the window, over the gateway, waved with a white
  handkerchief to the tumultuous masses, and, exhibiting the order signed
  by Latour and Wessenberg, read its contents to the crowd.</p>
  
  <p>But a pacification was not to be thought of; the people were too
  excited, their fury could only be appeased by blood; that delayed
  measure was not sufficient; they made negative gesticulations, and
  summoned the student to come down and open the portals to their
  admission. The tumult increased from minute to minute; the closed doors
  at length gave way under the axes of the mob, and the people streamed
  in, led by a man ”in a light gray coat.”</p>
  
  <p>The secretary of war, having by this time abandoned the idea of defence,
  on the ground either that it was useless or impolitic, no shots were
  fired or active resistance offered; but the orderlies with their horses
  retired to the stables, and the grenadiers into an inner court. At first
  only single individuals entered, and their course was not characterized
  by violence; then groups, proceeding slowly, listening, and searching;
  and, at last the tumultuous masses thundered in the rear.</p>
  
  <p>Ere long the cry rung on the broad staircase, ”Where is Latour? he must
  die!” At this moment the ministers and their followers in the building,
  with the exception of Latour himself, found means to escape, or mingled
  with the throng. The deputies, Smolka, Borrosch, Goldmark, and
  Sierakowski, who had undertaken to guarantee protection to the
  threatened ministers, arrived in the hope of restraining the mob. The
  numerous corridors and cabinets of the war office (formerly a monastery
  of the Jesuits) were filled with the crowd; the tide of insurrection now
  rose to an uncontrollable height; and the danger of Latour became every
  moment more imminent.</p>
  
  <p>The generals who were with him, perceiving the peril, entreated him to
  throw himself upon the Nassau regiment or the Dutch Meister grenadiers,
  and retreat to their barracks. He scorned the proposal, denied the
  danger, and even refused, for some time, to change his uniform for a
  civilian’s dress, until the hazard becoming more evident, he put on
  plain clothes, and went up into a small room in the roof of the
  building, where he soon after signed a paper declaring that, with his
  majesty’s consent, he was ready to resign the office of minister of war.
  A Tecnicker, named Ranch, who, it was said, had come to relieve the
  secretary of war, was seized and hung in the court by his own scarf, but
  fortunately cut down by a National Guard before life was extinct. The
  mob rushed into the private apartment of the minister, but plundered it
  merely of the papers, which were conveyed to the university. They came
  with a sterner purpose. The act of resignation, exhibited to the crowd
  by the deputy Smolka, was scornfully received by the people, while the
  freshness of the writing, the sand adhering still to the ink, betrayed
  the proximity of the hand which had just traced it. Meanwhile, the crowd
  had penetrated the corridors of the fourth story, and were not long in
  discovering the place of Latour’s concealment. Hearing their approach,
  and recognizing the voice of Smolka, vice-president of the assembly, who
  was doubtless anxious to protect him, Latour came out of his retreat.</p>
  
  <p>They descended together from the fourth story by a narrow stairway, on
  the right-hand side of the building, and entered the yard by the pump.
  At each successive landing place, the tumult and the crowd increased;
  but the descent was slow, and rendered more and more difficult by the
  numbers which joined the crowd at every turn of the stairs. At length
  they reached the court below, and Count Latour, although he had been
  severely pressed, was still unhurt; but here the populace, which awaited
  them, broke in upon the group that still clustered around Latour, and
  dispersed it. In vain did the deputies, Smolka and Sierakowski, endeavor
  to protect the minister; in vain did the Count Leopold Gondrecourt
  attempt to cover him by the exposure of his own body. A workman struck
  the hat from his head; others pulled him by his gray locks, he defending
  himself with his hands, which were already bleeding. At length a
  ruffian, disguised as a Magyar, gave him, from behind, a mortal blow
  with a hammer, the man in the gray coat cleft his face with a sabre, and
  another plunged a bayonet into his heart. A hundred wounds followed,
  and, with the words, ”I die innocent!” he gave up his loyal and manly
  spirit. A cry of exultation from the assembled crowd rent the air at
  this event. Every indignity was offered to his body; before he had
  ceased to breathe even, they hung him by a cord to the grating of a
  window in the court of the war office. He had been suspended there but a
  few minutes when, from the outrages committed on it, the body fell.</p>
  
  <p>They then dragged it to the Hof, and suspended it to one of the bronze
  candelabras that adorn that extensive, and much frequented square, and
  there treated it with every indignity; it remained for fourteen hours
  exposed to the gaze of a mocking populace.</p>
  
  <h3>FOOTNOTES:</h3>
  
  <p> A chapter from Mr. Stiles’s forthcoming work on Austria,
  which we have mentioned elsewhere in this number of the International.</p>
  
  <p> The last order issued by the unfortunate Latour was
  instructed to Colonel Gustave Schindler, of the imperial engineers, an
  efficient officer, as well as a most amiable and accomplished gentleman,
  and one well and favourably known in the United States, from his kind
  attention to Americans who have visited the Austrian capital. The
  colonel was in the act of passing out of the great door of the war
  office, which opens on the Hof, when the mob reached that spot.
  Recognized by his imperial uniform, he was instantly surrounded and
  attacked. He received many blows on the head, inflicted by the crowd
  with clubs and iron bars; was most severely wounded, and would probably
  have been killed but for the timely interference of one of the rabble,
  who, riding up on horseback between the colonel and the mob, shielded
  him from further blow, and finally effected his escape.</p>
  ",
  author_id: User.find_by(username: 'W H Stiles').id
)
file_013 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/leonardo-yip-1015708-unsplash.jpg')
story_013.image.attach(io: file_013, filename: 'leonardo-yip-1015708-unsplash.jpg')
story_013.update(created_at: Time.parse("Feb 21, 1852, 12:00am UTC +0"))


story_014 = Story.create(
  title: 'STRINGS OF PROVERBS.',
  lead_in: 'When a saying has passed into a national proverb, it is regarded as having received the "hall-mark" of the people, with respect to its prudence or practical wisdom.',
  category: 'Literature',
  body: "<p>When a saying has passed into a national proverb, it is regarded as
  having received the ”hall-mark” of the people, with respect to its
  prudence or practical wisdom. Proverbs deal only with realities,
  generally of the most homely and every-day kind, and are always supposed
  to comprise the most sage advice, or the most broad worldly truth,
  within the least possible compass.</p>
  
  <p>Now, while we admit that proverbs are for the most part true, and useful
  in their teaching, and that they very often inculcate excellent maxims,
  we must at the same time enter our protest against the infallibility of
  most of them. Numbers will be found, on the least examination (which is
  seldom given to them) to be one-sided truths; others, inculcate an
  utterly selfish conduct, under the guise of prudence or worldly wisdom;
  and some of them are absolutely false, or only of the narrowest
  application. The majority of the proverbs, of all modern nations,
  originate with the people, and with the humbler classes (we must except
  the Chinese and Arabic, which are evidently the product of their sages),
  as witnessed by the homeliness of the allusions, and the frequent
  vulgarity, but, in all cases, the actual experience of life and its
  ordinary occurences with regard to men and things. They are full of
  corn, with a proportionate quantity of chaff and straw. Let us no
  longer, therefore, take all these ”sayings” for granted; let us rather
  take them to task a little, for their revision and our own good.</p>
  
  <p>Proverbs being the common property of all mankind, and often to be
  traced to very remote geographical sources, we shall observe no national
  classification; but string a few together now and then from Arabia and
  China, from Spain, Italy, France, or England, just as they may occur.
  So, now to our first string.</p>
  
  <p><i>Honesty is the best policy.</i> This is true in the higher sense; but
  doubtful in the sense usually intended. It is true as to the general
  good, but not usually for the individual, except in the long run. (We
  pass over the obvious truth, that it is better policy to earn a guinea,
  than to steal one, because the proverb has a far wider range of meaning
  than that.) To be a ”politic,” clever fellow, a vast deal more humoring
  of prejudices, errors, and follies, is requisite, than at all assorts
  with true honesty of character. If, however, we regard this proverb only
  on its higher moral ground, then, of course, we must at once admit its
  truth. The reader will probably be surprised, as we were, to find that
  it comes from the Chinese, and will be found in the translation of the
  novel of ”<i>Iu-Kiao-Li</i>.”</p>
  
  <p><i>A leap from a hedge is better than a good man’s prayer.</i> (Spanish.) The
  leap (of a robber) from his lurking-place, being preferable to asking
  charity, and receiving a blessing, is one of those proverbs, the
  impudent immorality of which is of a kind that makes it impossible to
  help laughing. Its frank atrocity amounts to the ludicrous. It is an old
  Spanish proverb, and occurs in ”Don Quixote”—of course in the mouth of
  Sancho.</p>
  
  <p><i>A bird in the hand is worth two in the bush.</i> The extreme caution
  ridiculed by this proverb is of a kind which one would hardly have
  expected to be popular in a commercial country. If this were acted upon,
  there would be an end of trade and commerce, and all capital would lie
  dead at the banker’s—as a bird who was held safe. The truth is, our
  whole practice is of a directly opposite kind. We regard a bird in the
  hand as worth only a bird; and we know there is no chance of making it
  worth two birds—not to speak of the hope of a dozen—without letting it
  out of the hand. Inasmuch, however, as the proverb also means to exhort
  us not to give up a good certainty for a tempting uncertainty, we do
  most fully coincide in its prudence and good sense. It is identical with
  the French ”<i>Mieux vaut un</i> ’tiens’ <i>que deux</i> ’tu l’auras,’”—one ”take
  this” is better than two ”thou shalt have it;”—identical also with the
  Italian: <i>E meglio un uovo oggi, che una gallina domani</i>; an egg to-day
  is better than a hen to-morrow. It owes its origin to the Arabic—”A
  thousand cranes in the air, are not worth one sparrow in the fist.”</p>
  
  <p><i>Enough is as good as a feast.</i> The best comment on this proverb that
  occurs to us was the reply made by Rooke, the composer (a man who had a
  fund of racy Irish wit in him), at a time when he was struggling with
  considerable worldly difficulties. ”How few are our real wants!” said a
  consoling friend; ”of what consequence is a splendid dinner? Enough is
  as good as a feast.”—”Yes,” replied Rooke, ”and therefore a feast is as
  good as enough—and I think I prefer the former.”</p>
  
  <p><i>Love me, love my dog.</i> At first sight this has a kindly appearance, as
  of one whose interest in a humble friend was as great as any he took in
  himself; but, on looking closer into it, we fear it involves a curious
  amount of selfish encroachment upon the kindness of others—a sort of
  doubling of the individuality, with all its exactions. My dog (in
  whatever shape) may be an odious beast; or, at best, one who either
  makes himself, or, whose misfortune it is to be, very disagreeable to
  certain people; but, never mind—what of that, if he is <i>my</i> dog?
  Society could not go on if this were persisted it.</p>
  
  <p><i>Set a beggar on horseback, and he’ll ride to the devil.</i> The direction
  in which he will ride depends entirely on the character of the
  beggar—or poor man suddenly risen to power. Some sink over the other
  side of the horse, and drop into utter sloth and pampered sensualism;
  but others do their best to ride well, and sometimes succeed. Masaniello
  and Rienzi did not ride long in the best way; but several patriots, who
  have rapidly risen from obscurity to power, have set noble examples.</p>
  
  <p><i>Throw him into a river, and he will rise with a fish in his mouth.</i>
  (Arabic.) Some men are so fortunate that nothing can sink them. Where
  another man would drown they find fish or pearls.</p>
  
  <p><i>The monkey feared transmigration, lest he should become a gazelle.</i>
  (Arabic.) The matchless conceit of some people, and utter ignorance of
  themselves, either as to appearance or abilities, are finely expressed
  in the above.</p>
  
  <p><i>The baker’s wife went to bed hungry.</i> (Arabic.) How often is it seen,
  that those who follow a profession or trade, are among the last to
  display a special benefit from their calling! Our proverb, that
  ”Shoemakers’ wives are the worst shod,” seems to be derived from the
  same source.</p>
  
  <p><i>Chat —chaud— craint l’eau froide</i>; the scalded cat fears (even) cold
  water. This is a better version of the English proverb of ”A burnt child
  dreads the fire.” That the proverb is by no means of general
  application, the experience of every one can avouch. It would be the
  saving of many a child, of whatever age, who having been burnt should
  entertain a salutary dread of the fire ever after. But it is not so;
  witness how many are burnt—<i>i.e.</i>, ruined, wounded, shot, drowned, made
  ridiculous, who had all been previously well warned by ”burning their
  fingers” with losses, injuries by land and sea, and failures in attempts
  involving dangerous chances.</p>
  
  <p><i>Crom a boo</i>; I will burn. This Irish proverb, or saying, may serve in
  many respects as an adverse commentary on the preceding. There are
  people who are never at rest when they are out of hot water—nor
  contented when they are in. ”I will burn” is the motto of the Duke of
  Leinster. It would do capitally for Mr. Smith O’Brien. Perhaps, however,
  it should not be read as a resolution to suffer, but as a threat to
  inflict a burning. Still, the vagueness of this threat—a dreadful
  announcement with no definite object—would render it equally
  applicable.</p>
  
  <p><i>Bis dat qui cito dat</i>; he gives double who gives promptly. The truth of
  this is well illustrated by the converse it suggests; that he who long
  delays and tantalizes before giving, earns less gratitude than scorn. It
  requires more generosity and a finer mind to confer a favor in the best
  way, than to confer double the amount of the favor in itself.</p>
  
  <p><i>What I gain afore I lose ahint.</i> (Scotch.) To be engrossed with a fixed
  object, is to forget what is going on all around us. I am closely
  engaged with what is passing before my eyes, while I am deceived and
  injured behind my back. This quaint old proverb has been ludicrously
  illustrated by a characteristic story. A Highlander, in a somewhat
  scanty kilt, was crossing a desolate moor one winter’s night, and being
  very cold, he hastened to a light he saw at no great distance. It turned
  out to be a decomposed cod’s head, which sent forth phosphoric gleams.
  He stooped down to try and warm his hands at it; but finding the bleak
  winds whistling all round his legs, he made the sage observation above,
  which has passed into a proverb.</p>
  
  <p><i>Entfloh’nes Wort, geworf’ner Stein, die kommen nimmermehr herein</i>; the
  hasty word, and hasty stone, can never be recalled. How truthful, how
  home to the mark, does this proverb fly; how excellent is the warning
  and the self-command it inculcates!</p>
  
  <p><i>To-day a fire, to-morrow ashes.</i> (Arabic.) Violent passions are the
  soonest exhausted; to-day all-powerful, to-morrow nothing, or the
  consequences.</p>
  
  <p><i>Reading the psalms to the dead.</i> (Arabic.) This is the original of our
  ”Preaching to the dead,” to express the fruitlessness of exhortations,
  applications, or petitions, to certain insensible people.</p>
  
  <p><i>Follow the owl, she will lead thee to ruin.</i> (Arabic.) A most
  picturesque proverb, giving its own scenery with it. But it strikes one
  as curious that this should come from the East which seems so familiar
  to our apprehensions. Not only are the habits of the owl the same, but
  the owl is equally regarded as the symbol of a purblind fool. Yet, on
  the other hand, the owl of classic times was a type of wisdom.</p>
  
  <p><i>Two of a trade can never agree.</i> It is curious, and, in most instances,
  highly gratifying, to see how many of these sayings of our ancestors are
  becoming falsified by the great advances made, of late years, in social
  feelings and arrangements. Trades’ unions, co-operative societies—in
  fact, all our great companies prove how well two of a trade can agree;
  and so do all combinations of masters or of workmen. Yes, it will be
  said, but they ”agree,” and co-operate for their mutual interests, and
  they do not agree with those opposed to them. Of course not; the
  sensible thing, therefore, is obvious, to enlarge the sphere of good
  understanding and reciprocal fair dealing in matters of business, and
  thus to supersede the bad feeling and injury of greedy rivalries and
  selfish antagonisms.</p>
  
  <p><i>There was a wife who always took what she had, and never wanted.</i>
  (Scotch.) A good practical advice, showing the importance of using what
  you possess, instead of hoarding it, or reserving it, even when most
  needed, for some possible contingency, which may never occur. It seems
  to refer chiefly to articles of dress, clothing, domestic utensils, or
  other household matters.</p>
  
  <p><i>Dat Deus immiti cornua curta bovi</i>; God curtails the power to do evil
  in those who desire to do it.</p>
  
  <p><i>There is honor among thieves.</i> This is, no doubt, quite true, though
  you must be a thief yourself to derive much benefit from it. They stand
  by their order. The suggestion is—since there is honor towards each
  other among the most unprincipled classes, surely Mr. Sweepstakes, and
  Mr. Moses Battledore, who are both respectable members of society, and
  belong to clubs, would not cheat me. But this does not logically follow;
  for we by no means know how far the respectable individual makes his
  view of his own interest an excuse to himself for an occasional
  exception to the code of morality he professes. There’s honor among
  thieves; and there are thieves (here and there) among
  honorably-connected men, ”all honorable men.” Life is a ”mingled yarn”
  of good and evil; and society is a motley aggregate of all sorts of
  yarns.</p>
  
  <p><i>A rose-bud fell to the lot of a monkey.</i> (Arabic.) The monkey
  appreciated the rose-bud quite as much as swine appreciate the pearls
  which are said to be cast before them.</p>
  
  <p><i>Of what use to a fool is all the trouble he gives himself?</i> (Chinese.)
  None whatever; but his folly may cause a vast deal of trouble to people
  of sense. One false move of an utterly incompetent man in office, and
  the force of the saying becomes very expansive.</p>
  
  <p><i>There are no lies so wicked as those which have some foundation.</i>
  (Chinese.) A saying which is but too true, and which ought to be
  universally understood in society, as some protection against slander.</p>
  
  <p><i>Many preparations before the sour plum sweetens.</i> (Chinese.) Great
  results do not hastily ripen; great and important changes must undergo a
  gradual process.</p>
  
  <p><i>Spare the rod and spoil the child.</i> This seems to be derived from the
  old Spanish proverb, which we find in Don Quixote, ”He loves thee well
  who makes thee weep.” They are unkindly and dangerous maxims, which tend
  to inculcate severity, and to justify harsh treatment upon the plea of
  future advantage. We readily admit that nothing can well be worse than a
  ”spoilt child,” nor can a more injurious system exist than that of
  pampering or spoiling—except the direct opposite, that of frequently
  causing tears.</p>
  
  <p><i>A tea-spoonful of honey is worth a pound of gall.</i> An indiscriminate
  use of the sweets of life is a stupidity and an injury; but the
  judicious use of them is of far more service in the production of good
  results, than the bitter lessons which are often considered to be of
  most advantage. It is better to soften the heart than to harden it. ”A
  soft word turneth away wrath.”</p>
  
  <p><i>What the ant collects in a year, the priest eats up in a night.</i>
  (Arabic.) The tithe-taxes, and other revenues of the state-clergy,
  derived from the industry of the working classes, are not very tenderly
  dealt with in this proverb.</p>
  
  <p><i>The walls have ears.</i> (Arabic.) This is one of the many instances of
  our homeliest proverbs in every-day use, being derived from the East. No
  doubt the saying, that ”Little pitchers have great ears” (in allusion to
  the sharpness of hearing in children), is also derived from the domestic
  utensils of foreign countries in ancient times. The British Museum
  contains many such little pitchers, as well as the Foundling Hospital.</p>
  
  <p><i>The ox that ploughs must not be muzzled.</i> (Arabic.) The laborer ought
  to be allowed freedom of speech, or at least free breathing. We have a
  nautical saying akin to this—”A sailor never works well if he does not
  grumble.”</p>
  
  <p><i>Three united men will ruin a town.</i> (Arabic.) The power of combination
  was never more excellently expressed.</p>
  
  <p><i>He begins the quarrel who gives the second blow.</i> (Spanish.) There are
  but few who possess the requisite degree of wise and kindly forbearance
  and magnanimous self-command implied in this saying. To strike again, or
  rather (as the <i>blow</i> is figurative) to retort an angry word, is natural
  to most men; to preserve a reproving silence, or administer a dignified
  rebuke, is in the power only of great characters, and not with them at
  all times. But it is quite possible, as we live in a very pugnacious
  world, that such forbearance should not be thrown away upon every one,
  or the small majority of the magnanimous would soon be beaten out of
  existence. The above proverb, we believe, is originally Spanish, and,
  coming from a people so proverbially revengeful, seems very
  extraordinary, and only to be accounted for as the result of an abstract
  thought of some lofty-minded hidalgo, speculating on friendship. Don
  Quixote might have said it.</p>
  
  <p><i>A stitch in time saves nine.</i> One of the most sensible and practical of
  all proverbs, as every body’s experience can avouch. Yet, in defiance of
  all their own experience, how many people we often see who constantly
  neglect the stitch in time! They do not forget it, or overlook it; and
  when they do, if you point it out to them, they still neglect it.</p>
  
  <p><i>Chi non sa niente, non dubita di niente</i>; he who knows nothing, doubts
  of nothing. The converse is equally true. He who knows much, is careful
  how he doubts of any thing. This is peculiarly inculcated, at the
  present time, by the extraordinary discoveries and success of science.</p>
  ",
  author_id: User.find_by(username: 'various2').id
)
file_014 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/aaron-burden-88785-unsplash.jpg')
story_014.image.attach(io: file_014, filename: 'aaron-burden-88785-unsplash.jpg')
story_014.update(created_at: Time.parse(", 12:00am UTC +0"))


story_015 = Story.create(
  title: 'Black Stain for Iron.',
  lead_in: 'For colouring iron and steel a dead black of superior appearance and permanency',
  category: 'Crafts',
  body: "<p>For colouring iron and steel a dead black of superior appearance and
  permanency, the following is a good formula: 1 part bismuth chloride,
  2 parts mercury bi-chloride, 1 part copper chloride, 6 parts
  hydrochloric acid, 5 parts alcohol, and 50 parts lamp-black, these
  being all well mixed. To use this preparation successfully—the
  article to be blacked or bronzed being first made clean and free from
  grease—it is applied with a swab or brush, or, better still, the
  object may be dipped into it; the liquid is allowed to dry on the
  metal, and the latter is then placed in boiling water, the temperature
  being maintained for half an hour. If, after this, the colour is not
  so dark as is desired, the operation has simply to be repeated, and
  the result will be found satisfactory. After obtaining the desired
  degree of colour, the latter is fixed, as well as much improved
  generally, by placing for a few minutes in a bath of boiling oil, or
  by coating the surface with oil, and heating the object till the oil
  is completely driven off The intense black obtained by this method is
  admirable.</p>
  
  <p>Another black coating for ironwork, which is really a lacquer, is
  obtained by melting ozokerite, which becomes a brown resinous mass,
  with a melting-point at 140° F. The melted mass is then further heated
  to 212° F., the boiling-point of water. The objects to be lacquered
  are scoured clean by rubbing with dry sand, and are dipped in the
  melted mass. They are then allowed to drip, and the ozokerite is
  ignited by the objects being held over a fire. After the ozokerite has
  burned away, the flame is extinguished, and the iron acquires a firmly
  adhering black coating, which resists atmospheric influences, as well
  as acids and alkalies. If the black iron vessels are to contain
  alkaline liquids, the above operation is repeated.</p>
  
  <p>A good cheap stock black paint or varnish for ironwork is prepared, as
  follows: Clear (solid) wood tar, 10 lb.; lamp black or mineral black,
  1<sup>1</sup>/<sub>4</sub>&nbsp;b.; oil of turpentine, 5<sup>1</sup>/<sub>2</sub>&nbsp;quarts. The tar is first heated in
  a large iron pot to boiling-point, or nearly so, and the heat is
  continued for about 4 hours. The pot is then removed from the fire out
  of doors, and while still warm, and not hot, the turpentine, mixed
  with the black, is stirred in. If the varnish is too thick to dry
  quickly, add more turpentine. Benzine can be used instead of
  turpentine, but the results are not so good. Asphaltum is preferable
  to the cheap tar.</p>
  
  <p>To make another good black varnish for ironwork, take 8 lb. of
  asphaltum and fuse it in an iron kettle, then add 2 gallons of boiled
  linseed oil, 1 lb. of litharge, <sup>1</sup>/<sub>2</sub>&nbsp;lb. of sulphate of zinc (add these
  slowly, or the mixture will boil over), and boil them for about 3
  hours. Then, add 1<sup>1</sup>/<sub>2</sub>&nbsp;lb. of dark gum amber, and boil for 2 hours
  longer, or until the mass will become quite thick when cool. After
  this it should be thinned with turpentine to the proper consistency.</p>
  ",
  author_id: User.find_by(username: 'William N Brown').id
)
file_015 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/nicolas-hoizey-455603-unsplash.jpg')
story_015.image.attach(io: file_015, filename: 'nicolas-hoizey-455603-unsplash.jpg')
story_015.update(created_at: Time.parse("April 14, 1913, 12:00am UTC +0"))


story_016 = Story.create(
  title: 'Varnishes for Ironwork',
  lead_in: 'A fine black varnish suitable for the covering of broken places in sewing machines and similar articles',
  category: 'Crafts',
  body: "<p>A reliable authority gives the following as a very good recipe for
  ironwork varnish. Take 2 lb. of tar oil, <sup>1</sup>/<sub>2</sub>&nbsp;lb. of pounded resin, and
  <sup>1</sup>/<sub>2</sub>&nbsp;lb. of asphaltum, and dissolve together, and then mix while hot in
  an iron kettle, taking all care to prevent the flames getting into
  contact with the mixture. When cold the varnish is ready for
  application to outdoor ironwork. Another recipe is to take 3 lb. of
  powdered resin, place it in a tin or iron vessel, and add thereto
  2<sup>1</sup>/<sub>2</sub>&nbsp;pints of spirits of turpentine, which well shake, and then let
  it stand for a day or two, giving it an occasional shake. Then add to
  it 5 quarts of boiled oil, shake it thoroughly well all together,
  afterwards letting it stand in a warm room till it gets clear. The
  clear portion can then be drawn off and used, or reduced with spirits
  of turpentine till of the requisite consistency. For making a varnish
  suitable for iron patterns, take sufficient oil of turpentine for the
  purpose of the job in hand, and drop into it, drop by drop, some
  strong commercial oil of vitriol, when the acid will cause a dark
  syrupy precipitate in the oil of turpentine, and continue to add the
  drops of vitriol till the precipitate ceases to act, after which pour
  off the liquid and wash the syrupy mass with water, when it will be
  ready for use. When the iron pattern is to be varnished, it must be
  heated to a gentle degree, the syrupy product applied, and then the
  article allowed to dry.</p>
  
  <p>A fine black varnish suitable for the covering of broken places in
  sewing machines and similar articles, where the japanned surface has
  become injured or scratched, can be made by taking some fine
  lamp-black or ivory-black, and thoroughly mixing it with copal
  varnish. The black must be in a very fine powder, and to mix the more
  readily it should be made into a pasty mass with turpentine. For the
  ordinary repairing shop this will be found very handy.</p>
  
  <p>The following is a simple way for tarring sheet-iron pipes to prevent
  rusting. The sections as made should be coated with coal tar, and then
  filled with light wood shavings, and the latter set alight. The effect
  of this treatment will be to render the iron practically proof against
  rust for an indefinite period, rendering future painting unnecessary.
  It is important, of course, that the iron should not be made too hot,
  or kept hot for too long a time, lest the tar should be burnt off.</p>
  
  <p>The following is a varnish for iron and steel given by a recognized
  authority: 5 parts of camphor and elemi, 15 parts of sandarach, and
  10 parts of clear grains of mastic, are dissolved in the requisite
  quantity of alcohol, and applied cold.</p>
  
  <p>Another good black enamel for small articles can be made by mixing 1
  lb. of asphaltum with 1 lb. of resin in 4 lb. of tar oil, well heating
  the whole in an iron vessel before applying.</p>
  
  <p>A good brown japan can be prepared by separately heating equal
  quantities of amber and asphaltum, and adding to each one-half the
  quantity by weight of boiled linseed oil. Both compounds are then
  mixed together. Copal resin may be substituted for the amber, but it
  is not so durable. Oil varnish made from amber is highly elastic. If
  it is used to protect tin-plate printing, when the plates after
  stoving have been subsequently rolled so as to distort the letters,
  the varnish has in no way suffered, and its surface remains unbroken.</p>
  
  <p>A bronzing composition for coating iron consists of 120 parts mercury,
  10 parts tin, 20 parts green vitriol, 120 parts water, and 15 parts
  hydrochloric acid of 1.2 specific gravity.</p>
  ",
  author_id: User.find_by(username: 'William N Brown').id
)
file_016 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/yann-le-comte-712005-unsplash.jpg')
story_016.image.attach(io: file_016, filename: 'yann-le-comte-712005-unsplash.jpg')
story_016.update(created_at: Time.parse("April 14, 1913, 10:30pm UTC +0"))


story_017 = Story.create(
  title: 'Black Paints.',
  lead_in: 'Carbon, in one form or another, is the base of all black pigments.',
  category: 'Crafts',
  body: "<p>Carbon, in one form or another, is the base of all black pigments. By
  far the most common of these, as used in structural plants, is
  graphite. Other black pigments are lamp-black (including carbon black)
  and bone-black, the former being produced in many grades, varying in
  price from twopence to half a crown per pound. Bone-black, which is
  refuse from the sugar-house black, varies in the percentage of carbon
  contained, which is usually about 10 or 12 per cent, the remainder
  being the mineral matter originally present in the bone, and
  containing 3 or 4 per cent of carbonate, whilst most of the remainder
  is phosphate of lime. Lamp-black is an absolutely impalpable powder,
  which having a small amount of greasy matter in it, greatly retards
  the drying of the oil with which it may be mixed. For this reason it
  is not used by itself, but is added in small quantity to other paints,
  which it affects by changing their colour, and probably their
  durability. For example, it is a common practice to add it to red
  lead, in order to tone down its brilliant colour, and also to correct
  the tendency it has to turn white, due to the conversion of the red
  oxide of lead into the carbonate.</p>
  ",
  author_id: User.find_by(username: 'William N Brown').id
)
file_017 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/wall-2635972_1920.jpg')
story_017.image.attach(io: file_017, filename: 'wall-2635972_1920.jpg')
story_017.update(created_at: Time.parse("April 14, 1913, 1:02pm UTC +0"))


story_018 = Story.create(
  title: 'How one piece of safety equipment has been saving lives for 100 years',
  lead_in: 'Hard hats save lives, and what you may not know is that the hard hat turns 100 this year.',
  category: 'Technology',
  body: "<p>(BPT) - Gary Govanus didn’t put much thought into what he was wearing 45 years ago while working in-flight services at night at Chicago O’Hare, but by the end of that day his life would be forever changed because he reached for a hard hat at the start of his shift.</p><p>On the night of his accident, he and his team were cleaning out an Eastern 747 airplane that had electrical problems and flaps stuck in the extended position. This meant moving things in and out of the plane using an inconvenient, steep staircase.</p><p>”Because of the height of the door and the curvature of the air frame, the ramp that usually nestled up against the side of the plane at door level was now about two feet lower than the door and there was a three-foot gap between the plane and the truck,” said Govanus. ”It presented an obstacle that required thought and planning to get into and out of the plane.”</p><p>Freezing cold and past quitting time, Govanus was anxious to get home to see his fianc&eacute;e, who had recently arrived in town.</p><p>”I was thinking about going home and not getting into the airplane,” he said. ”As I took that final step to get into the aircraft, I missed. I may not remember everything from that night, but the sight of watching the open door go by as I started my plunge is forever ingrained. I knew that I was about to find out if it was my time to die.”</p><p>He fell about 30 feet to the cement tarmac. Thanks to the position he landed in, a heavy winter coat that provided cushion and his Bullard hard hat, he survived.</p><p>”I was wearing a hard hat and that heavy jacket. The hard hat kept me alive. The jacket prevented further injury to my shoulders and arms. I came away with two compressed vertebrae and two broken wrists. I was blessed,” Govanus said.</p><p><strong>Hard hat history</strong></p><p>Hard hats save lives, and what you may not know is that the hard hat turns 100 this year. The hard hat comes from Kentucky-based, family-owned Bullard, founded in 1898 in San Francisco to supply carbide lamps and mining equipment to gold and copper miners. The &ldquo;Hard Boiled&rdquo; hat, introduced in 1919, was the first of many innovative designs over the past century in head protection and safety equipment.</p><p>During the 1930s, while the Golden Gate Bridge was being constructed in San Francisco, bridge engineer Joseph B. Strauss asked the company to adapt its hats to protect bridge workers. This was the first-ever designated &ldquo;hard hat area.&rdquo; The company continued to innovate the hard hat. In 1938, they designed and manufactured the first aluminum hard hat, considered durable and reasonably lightweight for the time.</p><p>The company&rsquo;s distinctive three-rib, heat-resistant fiberglass hard hat was developed in the 1940s. In the 1950s and &rsquo;60s, thermoplastics replaced fiberglass. In 1982, the standard hard hat changed again with the incorporation of a non-slip ratchet suspension with a knob in the back for simple sizing.</p><p>The modern hard hat is produced from polyethylene plastic, making it lightweight, durable, easy to mold and non-conductive to electricity. Features such as easy-lock snaps, an upgraded suspension system and enhanced air flow, make it more comfortable and convenient than ever.</p><p>Bullard is also a supporter of the Turtle Club, a group that honors those whose life was saved as a result of wearing a hard hat. Survivors can share their story via the company website, www.bullard.com.</p>
  ",
  author_id: User.find_by(username: 'Brandpoint').id
)
file_018 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/1034464234.jpg')
story_018.image.attach(io: file_018, filename: '1034464234.jpg')
story_018.update(created_at: Time.parse("May 21, 2019, 12:00am UTC +0"))


story_019 = Story.create(
  title: 'The future of commercial trucking: Your favorite goods now delivered using alternative fuel',
  lead_in: 'Thanks to the trucking industry, you are able to purchase and use the things you want and need.',
  category: 'Technology',
  body: "<p>(BPT) - Think about it: The food you purchased at the grocery store and cook for dinner tonight might have come from other locations around the world. Your clothes bought online might come from a manufacturing plant across the country. That package sitting outside in your entryway when you get home from work could have traveled coast-to-coast before arriving at your door.</p><p>Thanks to the trucking industry, you are able to purchase and use the things you want and need. In fact, the trucking industry is the lifeblood of the U.S. economy, with about 71 percent of all the freight tonnage moved in the U.S. being done so on trucks, according to the American Trucking Associations. As the industry saying goes: If you bought it &mdash; a truck probably brought it.</p><p>To move 10.5 billion tons of freight annually requires over 3.6 million heavy-duty Class 8 trucks and over 3.5 million truck drivers. It also takes almost 39 billion gallons of diesel fuel to move all of that freight, according to the association.</p><p>However, the trucking industry is changing with the times. With a forward-thinking mindset, transportation leaders and proactive companies are embracing the trend of using alternative-fuel vehicles such as<s></s> electric vehicles in commercial transportation.</p><p>You probably have heard of electric cars for personal use, and maybe you even own one yourself. These types of vehicles are designed to use a battery instead of traditional fuels, which helps eliminate tailpipe emissions.</p><p>Larger commercial vehicles like trucks and buses may also benefit from this electric technology. The switch to electricity is slowly changing commercial transportation. In the future, you might receive your food, goods and packages &mdash; either directly or indirectly &mdash; by a commercial electric truck or van rather than <s></s>diesel-powered or gasoline-fueled vehicles. While currently in limited availability, electric trucks are starting to take root in some of the larger trucking fleets.</p><p>Consider Penske Truck Leasing for example, which operates and maintains a truck fleet of more than 311,000 vehicles in North America. The company recently announced it was adding small, medium and large electric trucks to its overall fleet mix. And, it is also building out commercial electric vehicle charging stations at select California locations as a start.</p><p>Penske is an industry leader in transportation and in the areas of operating and maintaining fleets of traditionally fueled vehicles as well as alternative-fueled vehicles, which includes natural gas, propane, electric and diesel-electric hybrids.</p><p>Early introductions from truck manufacturers and large fleets like Penske are helping to re-shape the future of mobility in commercial transportation. The goods you use today that are shipped via traditional diesel trucks may one day be shipped using alternative fuels such as electricity.</p>
  ",
  author_id: User.find_by(username: 'Brandpoint').id
)
file_019 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/1034074520.jpg')
story_019.image.attach(io: file_019, filename: '1034074520.jpg')
story_019.update(created_at: Time.parse("May 2, 2019, 12:00am UTC +0"))


story_020 = Story.create(
  title: 'Getting kids thinking about life after graduation',
  lead_in: 'While it seems like kids need no help understanding technology in their day-to-day-lives, many might not necessarily think about technology in a career capacity.',
  category: 'Technology',
  body: "<p>(BPT) - Experiences and learning outside of the classroom can really shape a child&rsquo;s perspective, particularly when it comes to making decisions about what sort of work they might want to pursue. As important as formal education is, kids also learn from the school of life.</p><p>While it seems like kids need no help understanding technology in their day-to-day-lives, many might not necessarily think about technology in a career capacity. Particularly for young girls, there is an opportunity to encourage them to explore this sector. Research by the Computing Technology Industry Association found that 69 percent of women who have not pursued careers in information technology attribute their choice to not knowing what opportunities are available to them.</p><p>Programs like &ldquo;Take Our Daughters and Sons to Work Day&rdquo; are great tools for broadening kids’ perspectives of different jobs that are available &mdash; roles they might not have even thought existed.</p><p>For Jo Amato-Tuck, global partner development manager, Microsoft, the opportunity to inspire kids is deeply personal. She is a member of the Parent Employee Resource Group, which sponsors Bring your Kids to Work Day for the more than 40,000 employees in Redmond, Washington, and thousands more in remote offices at Microsoft. What&rsquo;s more, Jo is a mother of three children, all of whom are at an age where they are asking more questions not only about their mom&rsquo;s work, but about what sorts of jobs might interest them (besides being Adele someday).</p><p>She touts that sparking imagination and inspiration in kids is particularly important for young girls, who might feel like a career in technology isn&rsquo;t for them. &ldquo;Young women visiting our office see diverse women working in myriad areas. It gives them real, tangible proof that there are many successful women in technology, so they can pursue a career in technology one day.&rdquo;</p><p>Amato-Tuck has the following advice for parents hoping to spark discussions about career ambitions with kids:</p><p>* Find out what your kids are genuinely curious about, setting aside your own hopes or aspirations of what sort of work they&rsquo;ll pursue. Foster that interest through books, videos or other research in fun, relatable ways.</p><p>* Take advantage of programs like Take Our Daughters and Sons to Work Day. If your profession doesn’t line up with their interests, don’t take it personally: Perhaps see if you can arrange a visit with a family member or friend whose career piques their curiosity.</p><p>* Bring your child to work, even for short visits. It helps them understand your life outside of being a parent and gives them context on what you do while they are at school.</p><p>* It is never too early to build mentorships. Take them to places where they might meet a professional that they can look up to and encourage them to ask meaningful questions. It is also a great opportunity to build social skills like sending a follow-up note to thank that person for their time.</p>
  ",
  author_id: User.find_by(username: 'Brandpoint').id
)
file_020 = open('https://ethertechna-seeds.s3-us-west-1.amazonaws.com/1034673826.jpg')
story_020.image.attach(io: file_020, filename: '1034673826.jpg')
story_020.update(created_at: Time.parse("April 3, 2019, 12:00am UTC +0"))


