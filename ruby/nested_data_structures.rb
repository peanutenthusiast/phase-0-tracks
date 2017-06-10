Kansai_Region = {
    Kyoto_Fu: {
        capitol: 'Kyoto-shi',
        famous_food: ['Kaiseki', 'Kawadoko'],
        trains_info: {
            JR: ['Nara', 'Sagano', 'Kyoto'],
            Private: ['Hankyu', 'Keihan', 'Randen']
        }
    },
    Osaka_Fu: {
        capitol: 'Osaka-shi',
        famous_food: ['Okonomiyaki', 'Takoyaki', 'Kushi-katsu'],
        trains_info: {
            JR: ['Kyoto', 'Kobe', 'Loop', 'Takarazuka'],
            Private: ['Hankyu', 'Hanshin', 'Keihan', 'Kintetsu', 'Nankai'] 
        }
    },
    Hyogo_Ken: {
        capitol: 'Kobe-shi',
        famous_food: ['Kobe Beef', 'Akashiyaki', 'Crab'],
        trains_info: {
            JR: ['Kobe'],
            Private: ['Sanyo', 'Hankyu', 'Hanshin']
        }
    }
}

Kansai_Region[:Hyogo_Ken][:capitol]

p Kansai_Region[:Osaka_Fu][:famous_food]

p Kansai_Region[:Kyoto_Fu][:trains_info][:JR][-1]

Kansai_Region[:Kyoto_Fu][:famous_food].push('Tofu')

p Kansai_Region[:Kyoto_Fu][:famous_food]

p Kansai_Region[:Osaka_Fu][:famous_food].reverse!

p Kansai_Region[:Osaka_Fu][:capitol].upcase


