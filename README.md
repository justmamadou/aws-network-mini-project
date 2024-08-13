# Projet de Mise en Place d'une Architecture Réseau Cloud

## Introduction

Ce projet vise à concevoir et déployer une architecture réseau sécurisée et évolutive sur AWS. L'objectif est de configurer une infrastructure réseau complète qui prend en charge des environnements de production robustes et sécurisés. Cette architecture inclut plusieurs composants critiques tels que des instances EC2, des VPC, un Bastion Host, un VPN Site-to-Site, une Transit Gateway, et bien plus encore.

![image](https://github.com/user-attachments/assets/4f835c3e-023f-4736-80a7-4404323a8163)


## Objectifs

- Configurer deux VPC pour isoler les différentes parties de l'infrastructure.
- Déployer un Bastion Host pour sécuriser l'accès aux instances EC2.
- Mettre en place un VPN Site-to-Site pour connecter le réseau on-premises au réseau AWS.
- Utiliser une Transit Gateway pour centraliser la gestion des réseaux VPC et des connexions VPN.
- Configurer AWS WAF pour protéger les applications web.
- Mettre en place un système de monitoring avec CloudWatch.
- Configurer les instances EC2 avec AWS Systems Manager pour la gestion et la surveillance.
- Utiliser Route 53 pour la gestion DNS.
- Configurer une NAT Gateway pour permettre aux instances dans des subnets privés de se connecter à Internet.

## Liste des Services Utilisés

- **EC2**: Hébergement des instances de calcul dans les VPC.
- **Bastion Host**: Accès sécurisé aux instances EC2 en SSH.
- **VPC**: Virtual Private Cloud pour l'isolation des ressources.
- **AWS WAF**: Protection des applications web contre les attaques courantes.
- **CloudWatch**: Surveillance et gestion des logs des ressources AWS.
- **AWS Systems Manager (SSM)**: Gestion des configurations et de la sécurité des instances EC2.
- **VPN Site-to-Site**: Connexion sécurisée entre le réseau on-premises et AWS.
- **Transit Gateway**: Centralisation de la gestion des réseaux VPC et des connexions VPN.
- **Customer Gateway**: Point de terminaison pour la connexion VPN du côté du réseau on-premises.
- **Route 53**: Service DNS pour la gestion des noms de domaine.
- **NAT Gateway**: Permet aux instances dans des subnets privés d'accéder à Internet tout en restant inaccessibles de l'extérieur.

## Temps de Réalisation

Ce projet est conçu pour être complété en **4 heures maximum**.

## Étapes du Projet

1. **Configuration des VPC**:
   - Créer deux VPC pour segmenter le réseau.
   - Configurer les subnets, les tables de routage et les passerelles Internet/NAT.

2. **Déploiement du Bastion Host**:
   - Déployer un Bastion Host dans un subnet public pour sécuriser l'accès SSH aux instances EC2 dans les subnets privés.

3. **Mise en Place du VPN Site-to-Site**:
   - Configurer une Customer Gateway et une VPN Gateway.
   - Établir une connexion VPN Site-to-Site entre le réseau on-premises et AWS.

4. **Configuration de la Transit Gateway**:
   - Déployer une Transit Gateway pour centraliser la connectivité entre les VPC et le VPN.

5. **Protection avec AWS WAF**:
   - Configurer AWS WAF pour protéger les applications web contre les menaces.

6. **Surveillance avec CloudWatch**:
   - Configurer CloudWatch pour surveiller les logs et les métriques des ressources AWS.

7. **Gestion des Instances avec SSM**:
   - Configurer AWS Systems Manager pour gérer et surveiller les instances EC2.

8. **Gestion DNS avec Route 53**:
   - Configurer Route 53 pour gérer les noms de domaine et la résolution DNS.

9. **Configuration de la NAT Gateway**:
   - Déployer une NAT Gateway pour permettre aux instances dans des subnets privés d'accéder à Internet.

## Conclusion

Ce projet nous permet de mettre en place une architecture réseau cloud sécurisée et scalable sur AWS. En suivant les étapes décrites, nous déploierons une infrastructure capable de supporter des environnements de production tout en assurant un haut niveau de sécurité et de connectivité.
