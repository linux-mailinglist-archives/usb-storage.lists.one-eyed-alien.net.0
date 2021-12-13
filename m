Return-Path: <usb-storage+bncBCTPRFE7TUKRBK6A32GQMGQEPN76PGA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wm1-x345.google.com (mail-wm1-x345.google.com [IPv6:2a00:1450:4864:20::345])
	by mail.lfdr.de (Postfix) with ESMTPS id CC38647350E
	for <lists+usb-storage@lfdr.de>; Mon, 13 Dec 2021 20:34:03 +0100 (CET)
Received: by mail-wm1-x345.google.com with SMTP id 138-20020a1c0090000000b00338bb803204sf10116150wma.1
        for <lists+usb-storage@lfdr.de>; Mon, 13 Dec 2021 11:34:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :in-reply-to:content-transfer-encoding:content-language:mime-version
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Q40uzOIHeGvG+JrQnaEfAgU7i17nIudSBBStFnO1Qds=;
        b=WuJwtCrcDzpp2CT4vKsonygRx8/Glu+/WDQbIJ/s2g/3sWJXmi6o/3ESOnR5i+S0ck
         DSgzuhf4Bj3mAOKJmtQsM8dqc7T9Y6f8nHSSKCfirNd4eGW6Bh9KRhbObWozRc4KV4ye
         wummb+sU1/NHBH5yIHO1XM02Jdney2QmaB/ZM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:in-reply-to:content-transfer-encoding:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:x-spam-checked-in-group
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Q40uzOIHeGvG+JrQnaEfAgU7i17nIudSBBStFnO1Qds=;
        b=o7CWaR/Xt84NVuGkPKWv2FnfdTbpQeGtztw/s6jIoTW9Oa/rqTGOQuTLXk8hfyUXk/
         6kuYKhr+szpWXZeLkNJ2C/9Pa51IFf1l9unpQgVwQUTBi1YI1UFOKBvpCsauIX2eiXSe
         8A4z7f56ItFsOmiG12QojeC6gWJoWBZ7yWxOkmDUKeb0Tf433jRDJ67HMApOdsu2Cc/B
         Fr5QpGnH3lBqsL+/pyj2FpRQ5l3xJijJXTQ/3YM7lR6PFgZeOHz95XSEURDERK9R8n9t
         tFRDCLL1kBYwaddJb1gaQgQpbI4dxtH2zzbc3n5uzynceovEwAAuu8GZH3+OZNN5aEU2
         Up+w==
X-Gm-Message-State: AOAM530ZK4iy1Xp/WJ786icshKJvbW7uCKkQgMjXGSB/JGRB2Ldeh9UF
	xA1NvFrKCCADQbHRAdYKbxbLsQ==
X-Google-Smtp-Source: ABdhPJzwj58pWarEk/DyZGNUNJ3Kl1j9ZC5k85zw5H2SgnAYoWxDim7R3fZyqondPaaDbFoVMn+YPQ==
X-Received: by 2002:a05:600c:4113:: with SMTP id j19mr40706903wmi.48.1639424043478;
        Mon, 13 Dec 2021 11:34:03 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:adf:f1c2:: with SMTP id z2ls112132wro.2.gmail; Mon, 13 Dec
 2021 11:34:02 -0800 (PST)
X-Received: by 2002:a05:6000:1201:: with SMTP id e1mr564375wrx.298.1639424042400;
        Mon, 13 Dec 2021 11:34:02 -0800 (PST)
Received: from de-smtp-delivery-102.mimecast.com (de-smtp-delivery-102.mimecast.com. [194.104.109.102])
        by mx.google.com with ESMTPS id z17si11449150wro.1013.2021.12.13.11.34.02
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Dec 2021 11:34:02 -0800 (PST)
Received-SPF: pass (google.com: domain of oneukum@suse.com designates 194.104.109.102 as permitted sender) client-ip=194.104.109.102;
Received: from EUR03-VE1-obe.outbound.protection.outlook.com
 (mail-ve1eur03lp2059.outbound.protection.outlook.com [104.47.9.59]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-35-7MRrWT9TN72I7BIrC8e3Og-1; Mon, 13 Dec 2021 20:34:00 +0100
X-MC-Unique: 7MRrWT9TN72I7BIrC8e3Og-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ws5UOptcG2dKcQy5dHqyhXaghjUb3zoLclOxR//t3gEKKvC88VNLrwySAOoPQc9qJH3jCVUe9JBtnxEn8AtkJWb6qaQIruV4vgDwQvNokjrwZKUeDRulotL+wQ6+mx9WIMtr9BrEMrNhTrSzb2//8crhbO0QEXpTdkzmN/9UdsIkG8C7IIv7tpge2/Jnir62sMqGUeR0ZaoekKXo58V9PWnQwoaJsAPgJV7oL0rUPLLhQGavWq2K0dqTCVF34NWY4+Q0A+fOtGJsYeKObpTqX93QbeRoX8En8Wanr3tZ9Gyug9PAa2+pH6HbdxSGLLckRXFrPZdz8+IWJOK/oJr4gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hTdfWgn2QtvfXjjbmxfGGXZx0dbwHiI8F/gyidabDD0=;
 b=KryKyNqepiwVBTkd6rlXp3ne2i3jEbMDQJdG8yCGU0pVJ0XC9LPccsOTYdcw1Y+lp0ix7Qw/vFqQrSXucsAPFLKEwBk1eLG5+Cy80YRoUcNx5kuweN0FmdLnolei+/tYbZsYXTMAZvoR6LjSB+huhZqLB/QEh0+a8gsPcV0qhYjUS8HNAbpPClt9+cDja9Ty/ThHZQ8ZJSsLFY+TsEljdh/8CGF927RnINXZsoYQ3hzjn8KxKEF1cMPLYSCPGMEQKBp+DzCVHBW/pBHBdpROwaju6plIc6PueE8JJt3IkNhzgHJm7pscDQd7pjsCgkKtTFKJsE616SzOSuYeR08iIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Received: from DB7PR04MB5050.eurprd04.prod.outlook.com (2603:10a6:10:22::23)
 by DB8PR04MB6811.eurprd04.prod.outlook.com (2603:10a6:10:fa::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4778.12; Mon, 13 Dec
 2021 19:33:59 +0000
Received: from DB7PR04MB5050.eurprd04.prod.outlook.com
 ([fe80::e9d6:1be9:d046:af1]) by DB7PR04MB5050.eurprd04.prod.outlook.com
 ([fe80::e9d6:1be9:d046:af1%7]) with mapi id 15.20.4755.028; Mon, 13 Dec 2021
 19:33:59 +0000
Subject: [usb-storage] Re: [PATCH] usb: storage: do not use UAS with Logitec LGB-4BNHUC
To: Alexandre Courbot <gnurou@gmail.com>,
 Alan Stern <stern@rowland.harvard.edu>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
CC: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 linux-kernel@vger.kernel.org
References: <20211212115506.180629-1-gnurou@gmail.com>
From: "'Oliver Neukum' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Message-ID: <9b20ae5d-be8f-59dd-3136-2a9f7ce216e9@suse.com>
Date: Mon, 13 Dec 2021 20:33:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
In-Reply-To: <20211212115506.180629-1-gnurou@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-ClientProxiedBy: AS9PR06CA0250.eurprd06.prod.outlook.com
 (2603:10a6:20b:45f::8) To DB7PR04MB5050.eurprd04.prod.outlook.com
 (2603:10a6:10:22::23)
MIME-Version: 1.0
Received: from localhost.localdomain (2001:a61:3b82:1901:38f:6b6:90e1:65cd) by AS9PR06CA0250.eurprd06.prod.outlook.com (2603:10a6:20b:45f::8) with Microsoft SMTP Server (version=TLS1_2, cipher=) via Frontend Transport; Mon, 13 Dec 2021 19:33:58 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: fc6334af-aca6-450c-9c58-08d9be6f828f
X-MS-TrafficTypeDiagnostic: DB8PR04MB6811:EE_
X-Microsoft-Antispam-PRVS: <DB8PR04MB681162F44B9F566BAB06456FC7749@DB8PR04MB6811.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2331;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: iecq5/bPD6z8rv9lvWcs+m/Ni7NaCRCuUIdwqZPjm6T2NekhTyMZbGjpa2GrPHBIhSUGH9ANHWgN9ymWsxaDflBkTkGhRYlfyblD9pGNgC8zPAuYWO/udGj1BN9393dQAsJu6Qumi7MbF2ktF+MXYvtoAc9YLh3JBDakZzfXwLfQnh8UR5wPVOe8ZVSdKJxFpQjyKYvzLjK/fEcVEsLMlN6fzQLs45WeM/BcT5rzdIeKZSOS0nBF2rsPe7jh2SGh27fW19pwZ+yN5u31T0MeXzxpfAdMMIXmtnxKcdwPZusrH0LSuYHqGjYFmBgty6dxfjhiMdVwoESWt1b1g6764OaVlo99M5QsBVSSsRmzzbGEjsQDY+AD81oWnvn1sQKpZbuufVplu2YWPwwYWqYNipfrDVvz8vM2Tlp7CNCj6GofBf9YawOC97GH9DIitmqRzD7C/L9xpfMusdx8VN0vpjHXt3Nwd1WQgK8t0d9i7eGjcqljNtD7RRT9auvOdFo14IKh8VUI1XUH5BMJLeyVq2YiSPxdV0G/IlO6aAUfI5VZXP8SQzLD22d8VTdDUh5PflXpC3H3oG335+AZOgHs1sdZNa8LblcTaO4qVxQpvB+f6LC685TnXL7tOZZTP6nrqLMZune70Nw5CWdRXLKNLvlonDKLSkyTWtEW3gUXBFj1MzRwFOo0LGqNACTQaMUKvIBPtXXX8N/BB83YXU1qwNV3cGzsY+fWxFg5/l9JpZ0=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DB7PR04MB5050.eurprd04.prod.outlook.com;PTR:;CAT:NONE;SFS:(366004)(6512007)(5660300002)(66556008)(2616005)(66946007)(66476007)(6486002)(36756003)(186003)(508600001)(53546011)(4744005)(2906002)(8676002)(8936002)(4326008)(31696002)(6506007)(316002)(110136005)(86362001)(38100700002)(31686004)(43740500002)(45980500001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VYiVcN7WM7BE6tu4jmdbDAAtMOrmnXw6bbeKBng4rpke52u/bvvtcjZCfBdO?=
 =?us-ascii?Q?nJwt79/mnMBn4eSkYDebUNNZ4/KbEpqrGQa/muLHnLDiK4MDzyKa67MSQvCj?=
 =?us-ascii?Q?/twpnA5YTsfSe7YRFWKS6cSuVDA16qzIJ01FPuxeYCCYsCPS7gi1aEI7Ff5H?=
 =?us-ascii?Q?H9q8Lt1UF4X/BLUrg0avrgMCTs8PyKspbG9OUrcEIhYn0sWnk+axhta3lIbz?=
 =?us-ascii?Q?XCVThKvet0+MGPAg6r4YrzOy5nIUmwLAAG4p5HGK7MHyzdsycyMEv2RQ7zgN?=
 =?us-ascii?Q?kOfCBUbj4WiOYUoBHEIyLdx8DauonZZiiKd3VcVhw6CWea8WLXtUItSPfBpV?=
 =?us-ascii?Q?Wpz+ZMx4Ou7HPYcNbziheOa60PxF+Lo+I5nZscet8XitupcBntQpeOgRMUrN?=
 =?us-ascii?Q?QyvEXQybhTwEgREfctUYBeZJOSQFl0oG9Yc0xNEUiNpXTfLxB3iJovXS2HRK?=
 =?us-ascii?Q?gPC2DroOPpPYBfkAqk7qgInFx78f3ffWYiXaRbm10AQMe+tOEb81bAf9ZC14?=
 =?us-ascii?Q?dqgiAoSjJ1ObcJHLJV9ciHMvMqdET6fhnwgK/+drMUlbtN8ryMxKJdcGuyJB?=
 =?us-ascii?Q?xVHqIWqq4VTIvBuskgNjNiw9fAl8omQjFByBfKWpMyai5UAsCV7my+q4bwn7?=
 =?us-ascii?Q?vH2J8CH+Ya5+2JsUa7vFEDlqB/Ebo+Z4ysRyzLfuKt9pEHKzhx5gG0+eOSwU?=
 =?us-ascii?Q?sEJ2Ny46pSGP5upKZDRpDBET1X9FzF3v6cKVjl6PRTxIH9XmByfC0Wx0gEwI?=
 =?us-ascii?Q?ff4d9O66FS3zMPtrVmO1mlSvCbTyFqyOX2m8BPEAWSuvBXO6KhRM2v6GO4/n?=
 =?us-ascii?Q?zVufVa3YXIqCyam3xJnuyKpHBTjg61exp9ESp3uuXk5dsRrbwk9mHvqvbh0g?=
 =?us-ascii?Q?LobUH2ec8O7/fpAUz7pH+9UbK4sE//NFC0cR4IODXD/Oq7VXre65EGG4dY5W?=
 =?us-ascii?Q?eFhWu1UsJlUPhM3IKajlzHWX/wqoChX8Ul5VJeNOY8CzW+mthHm9PqojCO1N?=
 =?us-ascii?Q?XV3b6yEeYrwgNxBQ2b9ZMBkCzJ/gNAQ4sQnkQ7iWE5Sxyf6L80Xv5j9TVHbj?=
 =?us-ascii?Q?zo4fsttpGC92A3tg44t+Ffj7gvXxsH4D3iJ+eqGP1CouFC11W6Kdv0Dc24ld?=
 =?us-ascii?Q?hX1GyaTUGTyNUpKiqce6Q8VopOOIT5T+zB9Y+PC+UHyqWu2d+qYfzhI9GaZ7?=
 =?us-ascii?Q?YlSFLfnK+2fnpoF4742Mtkdr2K5evGC6/IYVEh18D6ylGFc1lpnyiqVIP3Jj?=
 =?us-ascii?Q?cntLMWCzFqbaGrXHbocV+UXkKv4O5mMO115V7mrpal9MJOl35ZVxyO6cfw3v?=
 =?us-ascii?Q?kkq7av+Q9sedNL2pRehfVktWMefpNY0qPWhjTbptjppqgcETJqDGW8W3BZ6q?=
 =?us-ascii?Q?XaHL7xPZh+K9zN3NSLIBT2xItsjlHb4hXmn5TydOO7oihx1gUBRWdfhvuDOx?=
 =?us-ascii?Q?4N/z48M/O/u0N7I6+wUNVxvk+iR81ikuKAInh7UPdnnE3aLe3pJFquvSXMZO?=
 =?us-ascii?Q?7LbrDEIwZs7BDOnAWLyan8maN7rcrRUInF3U7vcZgpHOTFz5BwvGHiqonUXO?=
 =?us-ascii?Q?jC3jAOYkFgEVrrXIVXcQD0XXAEYbUkk4PBqeQ7IRTn7xZDHn8VfS8Za3Eygd?=
 =?us-ascii?Q?XILh12BMVi+9fcg8E+UUhn3+ysrOSlgb0Dj/4F91E137HhurVO1PKkuXTFwm?=
 =?us-ascii?Q?lE0OGygpoOQ5UbVvXXeBFbFQSr0=3D?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fc6334af-aca6-450c-9c58-08d9be6f828f
X-MS-Exchange-CrossTenant-AuthSource: DB7PR04MB5050.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Dec 2021 19:33:59.3521
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: levPJLBk20uu1bStBpKZ58UYqbMRVPIGYMnyl/UYoQog29wIpAssATkiqEGuTZeI/40NYvXFfr1PGRcmkgeG4A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR04MB6811
X-Original-Sender: oneukum@suse.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@suse.com header.s=mimecast20200619 header.b=ACo7Lq8L;
       arc=fail (body hash mismatch);       spf=pass (google.com: domain of
 oneukum@suse.com designates 194.104.109.102 as permitted sender)
 smtp.mailfrom=oneukum@suse.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=suse.com
X-Original-From: Oliver Neukum <oneukum@suse.com>
Reply-To: Oliver Neukum <oneukum@suse.com>
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
X-Spam-Checked-In-Group: usb-storage@lists.one-eyed-alien.net
X-Google-Group-Id: 960895140360
List-Post: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/post>,
 <mailto:usb-storage@lists.one-eyed-alien.net>
List-Help: <https://support.google.com/a/lists.one-eyed-alien.net/bin/topic.py?topic=25838>,
 <mailto:usb-storage+help@lists.one-eyed-alien.net>
List-Archive: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/>
List-Subscribe: <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>,
 <mailto:usb-storage+subscribe@lists.one-eyed-alien.net>
List-Unsubscribe: <mailto:googlegroups-manage+960895140360+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/lists.one-eyed-alien.net/group/usb-storage/subscribe>


On 12.12.21 12:55, Alexandre Courbot wrote:
> This 4-drives USB 3.1 bay gets unhappy when used with UAS:
>
> 	sd 10:0:0:0: [sdb] tag#18 uas_eh_abort_handler 0 uas-tag 5 inflight: CMD=
 IN
> 	sd 10:0:0:0: [sdb] tag#18 CDB: Read(16) 88 00 00 00 00 00 00 9d 42 30 00=
 00 04 00 00 00
>
> It works perfectly fine as a regular mass-storage device, so prevent UAS
> from being used with it.
>
Hi,

this is a big drastic a fix. s it always that command?
Have you tried less drastic quirks?

=C2=A0=C2=A0=C2=A0 Regards
=C2=A0=C2=A0=C2=A0 =C2=A0=C2=A0=C2=A0 Oliver

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/9b20ae5d-be8f-59dd-3136-2a9f7ce216e9=
%40suse.com.
