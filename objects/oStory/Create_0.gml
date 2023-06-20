// переменные для вывода текста

textSpeed = 0.225

x1 = RESOLUTION_W/2
y1 = RESOLUTION_H -180
x2 = RESOLUTION_W/2
y2 = RESOLUTION_H

x1Target = 0
x2Target = RESOLUTION_W

lerpProgress = 0
textProgress = 0

// текст истории
if global.local == "RU" messege = "Наш герой был наёмным охотником за монстрами," +
		 "\n путешествующим по всей стране и ищущим тех, кто" +
		 "\n нуждался в его услугах. Однажды, во время одной" +
		 "\n из своих миссий, герой был пойман и заточён в плен."+
		 "\n Там он был предан пыткам, которые сдорово ослабили его."+
		 "\n Но даже обесиленый и полуживой он смог бежать"+
		 "\n и бежал, пока не прибыл в родную деревню."+
		 "\n Полудохлый, без оружия и гроша в кармане, он с горечью"+
		 "\n обнаружил, что его родная деревня, некогда мирное и"+
		 "\n прекрастное место, населена монстрами..."

if global.local == "EN" messege = "Our hero was a monster hunter for hire," +
		 "\n traveling all over the country and looking for those who" +
		 "\n needed his services. One day, during one" +
		 "\n from his missions, the hero was caught and imprisoned."+
		 "\n There he was subjected to torture, which greatly weakened him."+
		 "\n But even exhausted and half dead, he was able to run"+
		 "\n and fled until he arrived at his native village."+
		 "\n Half-dead, without a weapon and a penny in his pocket, he bitterly"+
		 "\n discovered that his native village, once peaceful and"+
		 "\n beautiful place, inhabited by monsters..."









//alarm[0] = 120