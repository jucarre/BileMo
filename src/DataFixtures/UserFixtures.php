<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Faker\Factory;

class UserFixtures extends Fixture
{
    public function load(ObjectManager $manager)
    {
        $faker = new Factory;
        $faker = $faker->create('fr_FR');

        for ($c = 1; $c < mt_rand(100, 250); $c++) {
            $user = new User;
            $user->setName($faker->lastName().$c)
                ->setClient($this->getReference('client-'.mt_rand(1,2)));
            $manager->persist($user);
        }
        $manager->flush();


    }
}
