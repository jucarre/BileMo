<?php

namespace App\DataFixtures;

use App\Entity\Client;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;


class ClientFixtures extends Fixture
{
    private $passwordEncoder;

    public function __construct(UserPasswordEncoderInterface $passwordEncoder)
    {
        $this->passwordEncoder = $passwordEncoder;
    }

    public function load(ObjectManager $manager)
    {

        $client = new Client;
        $pass = $this->passwordEncoder->encodePassword($client, 'root');

        $client->setUsername('sfr')
            ->setEmail('client@sfr.fr')
            ->setPassword($pass)
            ->setRoles(['ROLE_USER'])
        ;

        $manager->persist($client);

        $client2 = new Client;

        $client2->setUsername('free')
            ->setEmail('client@free.fr')
            ->setPassword($pass)
            ->setRoles(['ROLE_USER'])
        ;

        $manager->persist($client2);

        $client3 = new Client;

        $client2->setUsername('admin')
            ->setEmail('admin@admin.fr')
            ->setPassword($pass)
            ->setRoles(['ROLE_ADMIN'])
        ;

        $manager->persist($client3);

        $manager->flush();
    }
}
