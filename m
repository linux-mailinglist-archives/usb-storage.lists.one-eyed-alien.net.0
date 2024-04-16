Return-Path: <usb-storage+bncBD4JJBHQWAERBNPK7CYAMGQEUU4LLCQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x848.google.com (mail-qt1-x848.google.com [IPv6:2607:f8b0:4864:20::848])
	by mail.lfdr.de (Postfix) with ESMTPS id F24FC8A65F7
	for <lists+usb-storage@lfdr.de>; Tue, 16 Apr 2024 10:22:14 +0200 (CEST)
Received: by mail-qt1-x848.google.com with SMTP id d75a77b69052e-4359c5929d8sf40447901cf.2
        for <lists+usb-storage@lfdr.de>; Tue, 16 Apr 2024 01:22:14 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1713255734; cv=pass;
        d=google.com; s=arc-20160816;
        b=fTbhjR9wBjaABCAEXdfZD1zrn+tYq4BQwsDN8p3880MjiG1QWwpTQdY/l/D26d1ZQO
         aPGalUuiuSqAd4qEiSWYJVmalxOpacM23CeGyLh0mEC5D1k+Iv1ElFtWrhi6EVS03xsV
         bY+ZSLRW7cBdyGbR39NXILeG94xnbEWEvqf/2shRygHyKbT8EaOC4+fxvXyOZxda9ott
         pe+i75c2xiUOhTjrdMwW6WpD+pPdtn6/OQr9LHTkDu7R/R7voT9b0E10nDZsscAqxNAk
         UxnGKcZK9i3dD0/MVYfQb5FWgRdLpA/i6izgbsTeJJl5TkEdcKONr780afKT2sfm0IDt
         YxBA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:message-id
         :date:subject:cc:to:from:dkim-signature;
        bh=cdiMZHEZFNW05tjif5n+zEsr7GSukushPnxsfGvoO+I=;
        fh=kR/RixeV6RKvt5ngzthHq63hVU/LZAvlqBrixVLhQu8=;
        b=PNuSe6bEEBGKkIerArBbqygOvfmNwQdOI4crXuu2OiJuWOx23qrj5KnwHL/mD9AUxd
         EWcJDeOziwM3Z6w2x/BuAkyVD85JMjYnWpWKg8casKN/finvnZ9QqIbnNU1LILb5G5bY
         6zfiWjRkbTuDI5WkKmY8NPoc1TNopyuqNBz18JFqp8c3Ra4ceW97bDWpeQra/qhVUlo/
         bLILBb6RY1lQ1/GSBijW3xHLpVou+HLMzNenQGNCmoEd6j2kbeayafv/lAzm4CuJrq0I
         BQRnMSWbc46CsTuPBEC7rHzgLnuSnn7Ww/FEz+s+WKTo9OdYRw20mNC+qecMySvSchiQ
         M+dw==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector2 header.b=ob5iQ5oj;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::600 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1713255734; x=1713860534; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cdiMZHEZFNW05tjif5n+zEsr7GSukushPnxsfGvoO+I=;
        b=FRx8MzoFZjlFE84LnWP0NIeJrZDumVuLxM+meI20UzbJEm6gI0Rrab5v9+PqNE4+ln
         hMc8DPPJLWEIYFTlMw223cYvWRO349oWY6D70LkvB+9I+2s/IjghzMjVmL2t6pFzDJaN
         Z3Z7CxXJ0KQPiQtYPfjyVw8HOUiWHZmC46qOY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713255734; x=1713860534;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:date:subject:cc:to:from:x-beenthere:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cdiMZHEZFNW05tjif5n+zEsr7GSukushPnxsfGvoO+I=;
        b=NiZ8gMZ23AHZeb7KLDXRhTPkXFakT3vGNaWSI36OtOHYTeU0acgy5C8r/nkEEN6RAO
         /wUj1u1daXPlzYzYadJZqWntZ3EmgEMahRpUHK+fwYQPzp4oe27K4tvwgC+z4DHnYitN
         m/afmtzj75HwbiJK59QtWszfDIstslychvS9UqM8NR4sUQA7/ltAciIIqWwROYPaJ5Hg
         wuEhg6mYE0lau9f6apqRKslc9atB8br6qdKACGmQej4JejZ5zapa80tlkOBAUZoVP65g
         2EPFmAefN4GHEpHjCYhByhzGYLvsSvQD4HclMiPKjKdW2Q0MNd2fGntWvapsWUwK47Md
         tqbQ==
X-Forwarded-Encrypted: i=3; AJvYcCWIZrbQ7MNQXE2EFhrADMsazXV3YlpwAj5/Q5PikHms5anO+rlsCFcLf1JYd0xVK7Ve57cztEqe6iEHE+xd1sM4ksOins7UhFMd
X-Gm-Message-State: AOJu0YzaD4wVLEXVxlJ2CVDl1lWWC65lBQ4r+AezWSvizw+vUGXHHsqJ
	xIJeYBeVgsm4nISLbU4BRDWsbojKmxLSOMQhKglplY22LjvaS13kNiKwbJZ6x2I=
X-Google-Smtp-Source: AGHT+IEyuF5aFlBx2l2LzcMmFAYiMQIORxTW5e6csKkOfujJVdOx8Gh5mez6Wh5Ti/hOBrBUh9b/Vw==
X-Received: by 2002:ac8:5f0c:0:b0:436:3ee4:5e9f with SMTP id x12-20020ac85f0c000000b004363ee45e9fmr15240905qta.60.1713255733458;
        Tue, 16 Apr 2024 01:22:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:7e96:0:b0:436:ab0e:c3ea with SMTP id w22-20020ac87e96000000b00436ab0ec3eals1630279qtj.1.-pod-prod-06-us;
 Tue, 16 Apr 2024 01:22:12 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUu+3OwHNj/JVVO6ggHTO221ypAjPueB5FFuoUwY3M3ChNjjywmPnOJQOVi/8IGyd6FWlRJdR356zbyiRc1xATh5SudfPEB9y4edRz3tmqe/0T01O8=
X-Received: by 2002:a05:620a:2212:b0:78d:77e4:25a0 with SMTP id m18-20020a05620a221200b0078d77e425a0mr12319144qkh.78.1713255732259;
        Tue, 16 Apr 2024 01:22:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713255732; cv=pass;
        d=google.com; s=arc-20160816;
        b=nWjKrqhOUG5LS6Ukk4Htp3iZWjIc7q8YJ+Y7kmBvuNDzZSjvB3mCZX8Q1HoBFAQZIj
         iG5eWQidm/ESPHIVkhONKR7Ru0qfB56d06rm8dXvDFH27WG5zW/xplS8cz5B1byyIKe9
         O8Pwq1lsnP7Cl0jQK2XuD1rXTVAc4llL/fRyNGMaAOliphuK+Ml5I4lX3nxdrAvk64XM
         oZRWEsOAJCvw4qXUtYip4VP5UeWad3uMTw+0cJiX4vq3fGnye9aqnDam4UY1/8inLBDD
         XECLDR9eJXq9eDDmMGRzzDteENsKORdTJkza5hA8WItOv6cpGgduf+/2hruYcJD24PcW
         JmbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Lml8/NXqgiK2lC6l2iyDMy43Q8sS3AlfU2NEIsBIqVI=;
        fh=U/tLpmsfu+A3CoEYP+TVSMW49ixuIFwidDFgs+Lzeso=;
        b=itAkNsc4e2uSdJHwcGX3Du9CJfEapAzFFBXGsAdeLSAvrdNiw9t47Cp+xxPTjAnDi8
         LM5ZePsKPgkU9hn4/mfCuxNcPc9dL4rgHtkKrnnNxhnKvbF6hAe0M7CJlxLhplAYMidv
         /OX2Oh9US85h9J5d+/qiULSFOttoUHvjpoFQuCqzZFY/p73eu77KN9/QJMd2aHWZ48zR
         xPAuQmU/09iMt/SrMKe+MwAUc1PUxsyEe/Zf6KgmMh6OFJPcElThEus2/tML8dkg/5kO
         qFB/o0tXTSPmjCt5H5BaJ3cUumt6G4kU//f59Yg5NSo0p50nWJDALQSu9Uj6kkVzDfOr
         CbRQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector2 header.b=ob5iQ5oj;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::600 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on20600.outbound.protection.outlook.com. [2a01:111:f403:2019::600])
        by mx.google.com with ESMTPS id j23-20020ae9c217000000b0078eeda78c4fsi2753998qkg.14.2024.04.16.01.22.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Apr 2024 01:22:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::600 as permitted sender) client-ip=2a01:111:f403:2019::600;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jiQPni9ZG5AZtw38IHHWaXzFp9riSMjHA3LGO7syxSfQDmzmGmWTGClb4M06yUTI4Pzrerk37mBguqSKvUQf94bKdPWTpr85PP2sMbNB9zKBAk9hRzk7o6UzAUMKAjMvOccBobUln80rvAB4qp1PPtERLdX0A7K9eAXjc8UyvHHaudNpgxz1A/GO37K/e8+CB1MDtVRlcO6zATYHBLMX13q0NEyN0yC00OjTX2EsNt0VtndrDYJypkL+h6eamE6V8/DtGIW9TNkT0ZXCdAtVF5rosEaGr79Jg/ehb8876AxuMCqHSZq0f2Y9NEm3VLksg93nDgfQapgLcg36aI7DSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Lml8/NXqgiK2lC6l2iyDMy43Q8sS3AlfU2NEIsBIqVI=;
 b=bnPXaWH5jcKFH6JQK6PyAMc8B80kUfVz6QT0JCgc6ENlGoEaoqBYA3NWPgJpK2zufG/1Yjg+r/CK8qr6dXQ2+3wHDR6mWgITJNVOpxo3tnZrj3P4s9byDWlLq5SIdLe+/0nHtfli5N1taxZ8MvZX4QbjilwPcB+7mzaZSb6AhzBKYI0f2S1mVXIIqybzCThuY9cMFQxuoVJB+hMaUOG+oFJKc8Cp4A781+MXlTb83Ux8eH17rLIgJsqWHfgSSlSMUsoqywJOyAnD1u6bF4JdD00dWQ7tjwWFM7B78onJl5zTU7Hu07kU87H9rtykXZ7FeJq1ZnHGfHNnuY1afa5oPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14) by TYCPR01MB6753.jpnprd01.prod.outlook.com
 (2603:1096:400:b0::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.48; Tue, 16 Apr
 2024 08:22:03 +0000
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b]) by TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b%4]) with mapi id 15.20.7452.049; Tue, 16 Apr 2024
 08:22:03 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: stern@rowland.harvard.edu,
	mdharm-usb@one-eyed-alien.net,
	gregkh@linuxfoundation.org,
	linux-doc@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net
Cc: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Subject: [usb-storage] [PATCH v3] usb-storage: Optimize scan delay more precisely
Date: Tue, 16 Apr 2024 17:28:21 +0900
Message-Id: <20240416082821.10164-1-Norihiko.Hama@alpsalpine.com>
X-Mailer: git-send-email 2.17.1
Content-Type: text/plain; charset="UTF-8"
X-ClientProxiedBy: OS7PR01CA0065.jpnprd01.prod.outlook.com
 (2603:1096:604:253::13) To TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: TYVPR01MB10781:EE_|TYCPR01MB6753:EE_
X-MS-Office365-Filtering-Correlation-Id: b701d5b9-0bb1-4b49-bef2-08dc5dee4b9b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yKYEs556tCdLooJ0pPiiyJEDO+rD/22pNo4fXnR3gI1fq/A4Q6fzBBOZkrb1eTsFdzEClGwukSUb9AUeIo/7xFM4CxOLHmVGXlJhYsqpqsd/Iqd89q74SBIDCZG8he0nZhQE7VjHa5ca89Y1jG6QxyjGT+B5SW8ZByeJtm7LJ5/M9NfYsq6NNwB+HicJdbgxleH0BZvYeaSNn48HBa6o0VGpyS0fLnfQxncgqzaQvjRPmat3ksPm+u75hcpwhe6DT6gU4giqGXVg8Lg5cZkTBgIsx8Harif7fOAmTxDbF83fzk7hhO6WBy+0NWFwTlFgl1AYl/ghdTT8MyJ64Ic5cdxNA4iAYYlNhrRxo5ouvrD8JEBQP0xJSy9bcLc9dNCWwIid43DBT6HOvEZM5r6U3pHMmh2Ofx8AF5OVbkJ1gJFbJKblCkghSI8CwA2KEhYdv1EedMCbSEjoxBi7guNv+/HZBc8VdtZiEt01V02EZGgGaS8zHGfw8/UyTn8Sm25F62OALOo2BUHlJ8Z9j7J0yO/l8l1r50P05XtiKoO/HxXsCCqryzyG8fRnMXis0IB+fLivWtJWZNz1C5Tg9DLVO9cDQ9F1J4xmvZScYr+82TJwQyezjfgx7HoCsjNyysE2k6Mws1q6iNRzvG1o8JyAW+8/8641+xXyf2Dla0tv6L1iFM33M+kkjIyO3c7vXsNO20poBKs+BlM8/AzhJP9h2nbM2gMXQZbGmVk6FEA5cW8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYVPR01MB10781.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015)(52116005)(38350700005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?u1doW0Tr7H8gCttOqhJTgTWDYNTuOkisMWESJoTDHnZLUPdB1JR+Hf0wg/Xs?=
 =?us-ascii?Q?3Xn6e2eyW143lxeQCGqpnY3nlL5WGMRog0dYugdWmXPZOuqJf2Wz5lLf0ya2?=
 =?us-ascii?Q?FkBrGFbZxhRD3x0v13qOuR+XfS+IbQBO2aA1WFeeQeTX3n+duQpVrsXH7ze/?=
 =?us-ascii?Q?hUrB0fouWdsehGmXaim9RmXCC9OSCmPNxvjBoplK92nmfkylbxTGG2jOHw4z?=
 =?us-ascii?Q?T9sbXqvsyv3R2Op9AB58G4plZffMViaABVrxTI4XfMyKcixnQSYwdEqSqk9/?=
 =?us-ascii?Q?h3ZYBrjPrqd7z8/46nnXMoazreUrVDEXjqtWew3rh9i/ENDr1ML7BEcsTk7o?=
 =?us-ascii?Q?N6h1ndKbh+XZRM7o+IPHtm25kLksRldvsNKI38NRXKdQF0kJ3VFIStvwzir7?=
 =?us-ascii?Q?DMhsuWDg62IW4ymTyOLeNWoLAE4tqnwGLSPKj4Qch6ELfzAELksyv3mkz1W7?=
 =?us-ascii?Q?TcjU7WvB4uFSiTu/H0L7gjLYywYfEI0LD20VSvaa/UdiVfgRzbQFCpial5/B?=
 =?us-ascii?Q?3K+w48PH+nfWfMwCHM6UaWb3HpdkjWVom/JeHunYHFDxQE3FCyhfyDvATo5y?=
 =?us-ascii?Q?Rcd6OZnhFCrCi0ctTDwM5Z8fUEmHZ7reQBZQajyppV6YBijdF1GKPA8Hq7jk?=
 =?us-ascii?Q?NFEvxQC8fjDDRhVctnSVS4iY6k+M9B0G6kYnqolTpf/XX2cmR338wgcuaAnb?=
 =?us-ascii?Q?X2hjhLMRrhuclMTDc8LQ5x1c6kcRRK534Gq8XHnarPh7s+vxLbMDUDQmYkCK?=
 =?us-ascii?Q?5vvhGKbfUKwNjejaQqIZvMlzLfsqrWGuwmX4Ig/L9DgXD4oArYuGYMf4q21s?=
 =?us-ascii?Q?VqIeNTIFv3V45Ri3xVm0JTqSV+xAuTLy4oqwaDlL1daxcmGFxD26JQadWfFY?=
 =?us-ascii?Q?KKG87a5nfOReK+JZJSUkU8MM0J4ltZfN8a5YeM3htVIGS4Txmwj7/M2eEMFN?=
 =?us-ascii?Q?wUxUBPMZvHBTJRhD1U61SeYEfIY9CxoOlRLTkTcQ5agPfptVIhKGvVqNCL+s?=
 =?us-ascii?Q?wxZoricp78NvIHjcrlCsHCIK9FimJmYn3Ieui9dFJInvnPY/2JAQXvSKfATo?=
 =?us-ascii?Q?UFinsPsg+i7EfPDbxLKS6YjN9rc0TNKtGcEVcP9U+lEICZx5c+dHBh762usn?=
 =?us-ascii?Q?cfV989lLs8QwR/cyI6S+uJ08UoYi4uxQZ4oHsvtpCmNABfejFSsD4SeuzSrT?=
 =?us-ascii?Q?P7p1c99RUfRsHvApNAVj6D1i78Vps4YreaOnGXQkMoTdteKPQJMgOSKMbHPB?=
 =?us-ascii?Q?XQOX0CDhwB6Eu1UMql+tHn9cNNnfOgQm3RfW3OtxnE0MkgP6Hukd3VZttW++?=
 =?us-ascii?Q?rVaCEIUiIdvDT8ehMPAwvSoSSmklqZ3OGngPz3J/WWZBl9YGdyfMBI010B9S?=
 =?us-ascii?Q?MBmwh4PbMr5F5YCQ8lMrvgaqqUuNdyj/MvGQ81TRJCBbI195R/ko34olEl4w?=
 =?us-ascii?Q?CaOWWd2gbq38144f7laB5paIQMHHOy5DG0gONtoeztZduFTzSMm3gLz6eWgq?=
 =?us-ascii?Q?XX/SJWJbS+OQKlSrk1R5Qyi6U23u0vXJntNximl/jiH+XrCKaCtboHvlhi36?=
 =?us-ascii?Q?LEDG5DWguqvzQevVVXiCWbtYKbXtEW3tOdc0lrzW?=
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b701d5b9-0bb1-4b49-bef2-08dc5dee4b9b
X-MS-Exchange-CrossTenant-AuthSource: TYVPR01MB10781.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Apr 2024 08:22:03.3454
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mitbWUcGLO7JMGVEfCU2Xf86MUyPQ3nC9kULGvpkV/WVsbAe2+fT11Fmkob5FeOri38y2TLhP+bmwOEkRKM2FQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYCPR01MB6753
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector2 header.b=ob5iQ5oj;       arc=pass
 (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com
 dmarc=pass fromdomain=alpsalpine.com);       spf=pass (google.com: domain of
 norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::600 as permitted
 sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
X-Original-From: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
Reply-To: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
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

Current storage scan delay is reduced by the following old commit.

a4a47bc03fe5 ("Lower USB storage settling delay to something more reasonable")

It means that delay is at least 'one second', or zero with delay_use=0.
'one second' is still long delay especially for embedded system but
when delay_use is set to 0 (no delay), still error observed on some USB drives.

So delay_use should not be set to 0 but 'one second' is quite long.
Especially for embedded system, it's important for end user
how quickly access to USB drive when it's connected.
That's why we have a chance to minimize such a constant long delay.

This patch optimizes scan delay more precisely
to minimize delay time but not to have any problems on USB drives
by extending module parameter 'delay_use' in milliseconds internally.
The parameter 'delay_use' is changed to be parsed as 3 decimal point value
if it has digit values with '.'.
It makes the range of value to 1 / 1000 in internal 32-bit value
but it's still enough to set the delay time.
By default, delay time is 'one second' for backward compatibility.

For example, it seems to be good by changing delay_use=0.1,
that is 100 millisecond delay without issues for most USB pen drives.

Signed-off-by: Norihiko Hama <Norihiko.Hama@alpsalpine.com>
---
 .../admin-guide/kernel-parameters.txt         | 10 +++
 drivers/usb/storage/usb.c                     | 72 +++++++++++++++++--
 2 files changed, 78 insertions(+), 4 deletions(-)

diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
index 561d0dd776c7..ae1eb5988706 100644
--- a/Documentation/admin-guide/kernel-parameters.txt
+++ b/Documentation/admin-guide/kernel-parameters.txt
@@ -6190,6 +6190,16 @@
 	usb-storage.delay_use=
 			[UMS] The delay in seconds before a new device is
 			scanned for Logical Units (default 1).
+			To specify more precise delay, supports 3 decimal point.
+			The range of decimal point is in milliseconds,
+			hence the minimum value is "0.001".
+			Example:
+				delay_use=1
+					1 second delay
+				delay_use=0.1
+					0.1 second delay
+				delay_use=2.55
+					2.55 second elay
 
 	usb-storage.quirks=
 			[UMS] A list of quirks entries to supplement or
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 90aa9c12ffac..d5eb7dd8f3b1 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -67,9 +67,73 @@ MODULE_AUTHOR("Matthew Dharm <mdharm-usb@one-eyed-alien.net>");
 MODULE_DESCRIPTION("USB Mass Storage driver for Linux");
 MODULE_LICENSE("GPL");
 
-static unsigned int delay_use = 1;
-module_param(delay_use, uint, S_IRUGO | S_IWUSR);
-MODULE_PARM_DESC(delay_use, "seconds to delay before using a new device");
+static unsigned int delay_use = 1 * MSEC_PER_SEC;
+
+static int delay_use_set(const char *s, const struct kernel_param *kp)
+{
+	unsigned int delay_ms = 0;
+	int frac = 3, ret;
+	char *p = skip_spaces(s);
+	char buf[16];
+
+	if (strlen(p) >= sizeof(buf) - frac)
+		return -EINVAL;
+
+	strscpy_pad(buf, p, sizeof(buf));
+
+	p = strchr(buf, '.');
+	if (p) {
+		int i = 0;
+		char *tmp = p + 1;
+
+		while (tmp[i] && tmp[i] != '\n')
+			*p++ = tmp[i++];
+
+		if (i == 0 || i > frac)
+			return -EINVAL;
+		frac -= i;
+	} else {
+		p = buf + strlen(buf) - 1;
+		if (*p != '\n')
+			p++;
+	}
+	while (frac-- > 0)
+		*p++ = '0';
+	*p = '\0';
+
+	ret = kstrtouint(buf, 10, &delay_ms);
+	if (ret < 0)
+		return ret;
+
+	*((unsigned int *)kp->arg) = delay_ms;
+	return 0;
+}
+
+static int delay_use_get(char *s, const struct kernel_param *kp)
+{
+	unsigned int delay_ms = *((unsigned int *)kp->arg);
+	unsigned int rem = do_div(delay_ms, MSEC_PER_SEC);
+	int len;
+	char buf[16];
+
+	len = scnprintf(buf, sizeof(buf), "%d", delay_ms);
+	if (rem) {
+		len += scnprintf(buf + len, sizeof(buf) - len, ".%03d", rem);
+		while (buf[len - 1] == '0') {
+			buf[len - 1] = '\0';
+			if (--len <= 1)
+				break;
+		}
+	}
+	return scnprintf(s, PAGE_SIZE, "%s\n", buf);
+}
+
+static const struct kernel_param_ops delay_use_ops = {
+	.set = delay_use_set,
+	.get = delay_use_get,
+};
+module_param_cb(delay_use, &delay_use_ops, &delay_use, 0644);
+MODULE_PARM_DESC(delay_use, "time to delay before using a new device");
 
 static char quirks[128];
 module_param_string(quirks, quirks, sizeof(quirks), S_IRUGO | S_IWUSR);
@@ -1066,7 +1130,7 @@ int usb_stor_probe2(struct us_data *us)
 	if (delay_use > 0)
 		dev_dbg(dev, "waiting for device to settle before scanning\n");
 	queue_delayed_work(system_freezable_wq, &us->scan_dwork,
-			delay_use * HZ);
+			msecs_to_jiffies(delay_use));
 	return 0;
 
 	/* We come here if there are any problems */
-- 
2.17.1

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20240416082821.10164-1-Norihiko.Hama%40alpsalpine.com.
