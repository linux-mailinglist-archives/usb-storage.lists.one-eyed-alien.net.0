Return-Path: <usb-storage+bncBCPNJ44H2IPRBE7Z4GUQMGQEG5LLBZI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb47.google.com (mail-yb1-xb47.google.com [IPv6:2607:f8b0:4864:20::b47])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C0647D5FED
	for <lists+usb-storage@lfdr.de>; Wed, 25 Oct 2023 04:25:25 +0200 (CEST)
Received: by mail-yb1-xb47.google.com with SMTP id 3f1490d57ef6-d9b9f56489fsf6035393276.1
        for <lists+usb-storage@lfdr.de>; Tue, 24 Oct 2023 19:25:25 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1698200724; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vh4y7PRkrlroAeV8TZgz5CJLA7AhEqfy0Im03AhuRrOiLmZGLoj1aPCsSrzzNjjI/w
         i4eSxffk7aNdXJ2bBHkySITcwukPgyo7T/lROPlcDnRExoOmOLQmHbtVPZdLYad5K/1N
         jK0dQsDoAQb2pn39USjSBAdMONkylaFFcRIdL+2khrcUDstYEd2r02ydNqPF/m6HkRUR
         8zL8iK62kbV1vkOlFEG17STNfVjNEjcyLYcWnTwqytcXhX1wsgY0dJ4+UACBoOzLX5qD
         +UxwgSeTTqp46e04bLcdOup/7sG88FjVbS6NzIybsnDtwmhBTYyzBnlCNUpF1mp+T0Dn
         l2LA==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=90/lRaGqoRTtf/FykhWHLZNG0OZx1OcITfhf1pIpZOE=;
        fh=uXFNTNxHHmy+KhSg92Ue1U2XiKvE5a47xq9JY7SRLlU=;
        b=esg6GHNGntfqk0jAiOKPHzjzYZ/XxTRrqimplJHF2XXfc6BlkJtqexuM2c+GD9Fqhc
         IspFQJfh/EqOCXZFx5uwe9r7pZrneHTIUqDj7XAmjMVtsmFt3sqgHx99XFolq5eow3Mz
         kdVgEC/Vj+r1hB30EZi3WoI+h10j47FjeVm7eQcTxGCMsbV9sp9af2gspifceNAIL88P
         vX4xrwzx4wyuOKGa0dLi644ZkmdSJTfMPl4JorQPhiosCY0raeVc6x2b6YmZhiWUGuUJ
         aF1b3cGTsGXRsolOpwjo+hj+QfV60DIbl9kQCiM1gG7Nj8x+/82hgbmUgl9WMnyHogmK
         /wjQ==
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=YmaR1WkW;
       arc=pass (i=1 spf=pass spfdomain=windriver.com dkim=pass dkdomain=windriver.com dmarc=pass fromdomain=windriver.com);
       spf=pass (google.com: domain of prvs=8662701a17=meng.li@windriver.com designates 205.220.178.238 as permitted sender) smtp.mailfrom="prvs=8662701a17=meng.li@windriver.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=windriver.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1698200724; x=1698805524; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=90/lRaGqoRTtf/FykhWHLZNG0OZx1OcITfhf1pIpZOE=;
        b=KOfyzPZMOFy0kA6OUc4HKhHAKxi4+lCvpnqISTXQqskio4X21ZS5edY0MjnG7DAAhA
         NVbq1TT/xJCHJK+qkgX4L5m/3LEwdUoyj606zqkhYFuxxBeaana7Lw5pgwrl+GyWNFQ0
         AonV2e6hLTIvKNqUcaMTuedAfqyIXsDSFdpUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698200724; x=1698805524;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=90/lRaGqoRTtf/FykhWHLZNG0OZx1OcITfhf1pIpZOE=;
        b=Xsz33blT4nNGpCF8Q35vmKXAndv/iHQIbeA13AEVx3GTTdf+Gz/g2mRqxhJVAHZ+I2
         aFlSettq6quO+HX3hmTVuHvGd7GFK5TyujFmiDfXvquHByGWx8REaQGcmRwT6EIrXc52
         QXsVCADqAS9N53b0g7ZlzBOyi5J9ef/RWmZGPNtGaYBdsiG/va53miS7jS52KsolgVCi
         GVxfS6qNVVnIMFCac/hwfhZMZxGIhaZ6wAJVA6OPxuRiMBQgCax6ijZ/NjCOoBiKRfFx
         5Qfd2rUUXQf3FMdP7QSMt+qCPSnYbh78F0pm71BTeGPhA8ah+6TjtnEIgQwlNeHdV9Kr
         hLpA==
X-Gm-Message-State: AOJu0Ywrq+nQ6GHUYUHvBTtpHSaMeYYpMohc9fq5FPZalP98/hi4XYVs
	RVhk/9RfrD4F9bzF9K6sdneHYQ==
X-Google-Smtp-Source: AGHT+IFfBRjXge+W6T+LrVB7yLs63mVFVxfi2w5P7mdZmFfCaCkiPCFNK9QAc1E/vP1u2nYGhC/gAA==
X-Received: by 2002:a25:d013:0:b0:d9b:ff50:b100 with SMTP id h19-20020a25d013000000b00d9bff50b100mr13997830ybg.28.1698200723966;
        Tue, 24 Oct 2023 19:25:23 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:d8c2:0:b0:d85:e5d1:b8c6 with SMTP id p185-20020a25d8c2000000b00d85e5d1b8c6ls1136634ybg.2.-pod-prod-08-us;
 Tue, 24 Oct 2023 19:25:23 -0700 (PDT)
X-Received: by 2002:a81:5246:0:b0:5a7:bc78:81e7 with SMTP id g67-20020a815246000000b005a7bc7881e7mr14282279ywb.30.1698200722950;
        Tue, 24 Oct 2023 19:25:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1698200722; cv=pass;
        d=google.com; s=arc-20160816;
        b=ISE1a8v8r0RpR/jOQNe9BNyVy5yurJPUxLqNYCcPOnHzzRW7UIV7mtorfv9CZePdCl
         oU59ieIs3Mfa6HEfiXDwZnr5rf3x78PMFbuil0KILYM+dsf100JmLtf9HPNl2YbVd1U5
         PC8VEbOwsksxZQSlZYwPzjGe6KPYCLv3HLSLKERLB5XofifkiLGKGd0WdocHd3lPChMh
         K3acNBBaT12elizSvgQjFKHVre/evmgatDUs3vp6L4yVNXmaEZuuFwC6Gt4+qPJY7rp0
         LXUiHN+PngV/TgVz8mgF61Ykqjy0npY5tLlCjKk0XYhaXliH0gYGk1nU3KSc8HOluQBU
         D1uw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=jkmYaKf/hvpnwlNMd1NL7PJsJcTT1a1Mj/0lP3RFx0w=;
        fh=uXFNTNxHHmy+KhSg92Ue1U2XiKvE5a47xq9JY7SRLlU=;
        b=M+2o1nvNoRnWO6IvgSn3616fXh6EGklBCLJ67RoCMUeyjU3wlohNkGT23oCLx5W5am
         Vu7wbkP+PcdQKK4FWRB5r7H+0/rG+tbmAAyBUOAPo9ep0AJhehTO+xTkGAapLneg3XWa
         6u0R5hqqd68+xDL+kKu+g/5Y+qfwgzBpv/mguCnwVqTq486cR59v1ClUEYkkguQi89rh
         67YRbIH4ngXiabTrtlIDeZUT80r8f7+gEiZtL2fYc0WYn0j48WYmCaPTIFFyKUM0e464
         xoyQL1MXUit9J+NJDuM/1ZEtiy3UF3LYCk64R+7hDvtagMU6UM5nkDvAejbhem4EjW/m
         Ir1Q==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@windriver.com header.s=PPS06212021 header.b=YmaR1WkW;
       arc=pass (i=1 spf=pass spfdomain=windriver.com dkim=pass dkdomain=windriver.com dmarc=pass fromdomain=windriver.com);
       spf=pass (google.com: domain of prvs=8662701a17=meng.li@windriver.com designates 205.220.178.238 as permitted sender) smtp.mailfrom="prvs=8662701a17=meng.li@windriver.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=windriver.com
Received: from mx0b-0064b401.pphosted.com (mx0b-0064b401.pphosted.com. [205.220.178.238])
        by mx.google.com with ESMTPS id a185-20020a0df1c2000000b005a8277fb373si10573935ywf.357.2023.10.24.19.25.22
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Oct 2023 19:25:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=8662701a17=meng.li@windriver.com designates 205.220.178.238 as permitted sender) client-ip=205.220.178.238;
Received: from pps.filterd (m0250812.ppops.net [127.0.0.1])
	by mx0a-0064b401.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39P1sEUd024298;
	Wed, 25 Oct 2023 02:25:22 GMT
Received: from nam12-mw2-obe.outbound.protection.outlook.com (mail-mw2nam12lp2041.outbound.protection.outlook.com [104.47.66.41])
	by mx0a-0064b401.pphosted.com (PPS) with ESMTPS id 3tv5m5v138-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Wed, 25 Oct 2023 02:25:21 +0000 (GMT)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aY40kbZQXS+/MzwmqW2Qx3ShSo+qtY5doL8NlPnRk9kzy0Yu7aNvG9hiDaum5G/S3XyW9okP0QwQYSWt1pqOr8VhqsIF4cZUVnWFi3raOr/1QSTAJfMciF+cZ1VbK5D4UjqKjqoPYG5wkEfugLPQ5it3BiN8JYV4Q4G55ZbL+kDevEoNALjDsvsycT1S731Ia8Pt868cU59TNq2tSQHWxY9hr/ysDHmb44KyceHlQnAGggc4sZ35LLByN2FwovpJCFiH+F0UQHjSC+KwNekNT6oDiRQe3nxy00Xr8XvRFyY1/a8K2VtHupzXf+staxJQ/QkoDhvHDTlGJuNfq1anbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jkmYaKf/hvpnwlNMd1NL7PJsJcTT1a1Mj/0lP3RFx0w=;
 b=cnfR2kCupqjkT6cP3XMNM8BvtW9VnO7d/IFTiHZc1TIxEUwX26JDSPxPKAN8rJZhtkFDWZVWy1X6kZADinzfQTE1z9dPTFBQ1Zaj9BURnJHOh7M9SinoMwUMApv2y3izgYEthOGgahgURNyY4faLjaf8nKyI40/fuIXT/PyaQWsVlYiXLGyzn/SNmwy+KADFyJCMf6MK8uQXU3t0sk0d/CMkEOzhOv1ZB+xoSLkgA7xE909vqWL8lsXIrWduW3zF8VgRM1YNqeMwy0zk+VrD5Sx1eyGw4N4pe/ImPNaZk6bcE+SKLg3ZwFdDbDg8Raq3ZW9IeqJyQXaN1as8mlWXtA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
Received: from CO1PR11MB5188.namprd11.prod.outlook.com (2603:10b6:303:95::16)
 by SA3PR11MB8117.namprd11.prod.outlook.com (2603:10b6:806:2f0::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6886.40; Wed, 25 Oct
 2023 02:25:18 +0000
Received: from CO1PR11MB5188.namprd11.prod.outlook.com
 ([fe80::37fc:5e18:cb39:ca1e]) by CO1PR11MB5188.namprd11.prod.outlook.com
 ([fe80::37fc:5e18:cb39:ca1e%3]) with mapi id 15.20.6907.022; Wed, 25 Oct 2023
 02:25:17 +0000
From: "'Li, Meng' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Alan Stern <stern@rowland.harvard.edu>,
        "gregkh@linuxfoundation.org"
	<gregkh@linuxfoundation.org>
CC: "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
        "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>,
        "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: [usb-storage] RE: [PATCH] usb: storage: add shutdown function for usb
 storage driver
Thread-Topic: [PATCH] usb: storage: add shutdown function for usb storage
 driver
Thread-Index: AQHaBXOS0TY0dBbnMkyFvU8OyrUaFrBXvqSAgAB6/iCAANrZgIAAAuUAgAADnoCAABRegIAAJNiAgABwKrA=
Date: Wed, 25 Oct 2023 02:25:17 +0000
Message-ID: <CO1PR11MB5188998FE62B30C3CA83A6F8F1DEA@CO1PR11MB5188.namprd11.prod.outlook.com>
References: <20231023054111.2744872-1-Meng.Li@windriver.com>
 <33bd0779-bfe7-4c87-8fe6-ea8455df3b6b@rowland.harvard.edu>
 <PH0PR11MB51918DD50651DB6BE937BEA3F1DFA@PH0PR11MB5191.namprd11.prod.outlook.com>
 <3fe5b43c-a5aa-4c6a-8614-03a4d9dd53e2@rowland.harvard.edu>
 <2023102428-zit-quickness-9b73@gregkh>
 <5107f6ca-e972-4af1-a21d-6c95778969f3@rowland.harvard.edu>
 <2023102459-protector-frequency-1033@gregkh>
 <a6bb88cd-0b89-4eb1-b90d-8ad633b7a8f2@rowland.harvard.edu>
In-Reply-To: <a6bb88cd-0b89-4eb1-b90d-8ad633b7a8f2@rowland.harvard.edu>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CO1PR11MB5188:EE_|SA3PR11MB8117:EE_
x-ms-office365-filtering-correlation-id: 16eb95df-4532-4fbe-a8ae-08dbd501a129
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zd4gzyCbK/XrkKrjztTzAFsMWqRJvA354G/1kBFlxVW4B88gdekFPsSJ0e9uWtfFcdkPQremjOoqiLr1u+GGuUn6ndB3yzncc2e7be6U18p7BPP/1G37ITQGTBe5IdzMHWb384Z14PWz1ZDVyzFIw7HJXd7yVoLqS1O+lMCGOw5EW9qppDuK6a7gipJBHJU1K5wj4XzQolS6xVkesBJXCxZQgVSwL38it78J+Zqxr2oFWb22DG971KNC7maCBlL7X8HtBBdqf4xZVsOBHXfkFxRpsa1/Soh9koSus65qpRiy7iVRg0TjD5ImLePIRgMed/JSlil1VeFMKRsiNgH9mbzKvTduNKP6V+0JpI11N2VsWEuHvYT3MItiFHnEfNxDvb8oFTNSk4FL35KhkK2gqoObJkIk5EI5woIE8GnG8X2Gd05orVpPPAim6RR9+MMxG/9Jsi7nVRR6z43zitTgemMIJe9vzuUxiNzDQWcLXZ2V5gXPCiB7LZsdrWlHIZMEqGSp5JMr0Sr/X2nnVZYcEyU16vQnJ0MrhRJUtNCFQ6r8lmuQVZoxoOtk/FcqKxUWvfj4EIr3hFWDNT5KyXjwWOUxjMSHKTG+aX3rVyH1HIahXxasFsvUUpsHZ1Py79VE
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB5188.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366004)(39850400004)(376002)(346002)(396003)(136003)(230922051799003)(451199024)(186009)(1800799009)(64100799003)(53546011)(2906002)(478600001)(54906003)(71200400001)(76116006)(6506007)(66446008)(33656002)(41300700001)(66556008)(64756008)(9686003)(66476007)(86362001)(316002)(26005)(38100700002)(7696005)(122000001)(8676002)(110136005)(55016003)(4326008)(8936002)(52536014)(5660300002)(83380400001)(66946007)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?q/L7f77OLi1XGHMw0rv/kpdSNp/ZFUeeJqoxc/JQy1G0YpanmV4AcAbtRzmj?=
 =?us-ascii?Q?bWNEiGh1gg5qx/ivpDMkxGpaCfKBxMVt31CxJqRw1w+8ZB53zybkP9ItMbI1?=
 =?us-ascii?Q?fEMpfQTgeIi2rPiPYPC63D0+sqhUc6pMRBl3Zms8j++afyg6oDAbPDli+m9/?=
 =?us-ascii?Q?1ugwEontEzRhCVOsPSMFkg6vyAg0+FQWZtb20EQ8Wys6qCES9Q2TowwVxDur?=
 =?us-ascii?Q?febu7WTlYjxiDffBIKVRi0EvHhiwuORmEvwI0f3KAdGy+d0/63YlaFYxKTl3?=
 =?us-ascii?Q?sBkSfU4b0yjG4NJY+3qN73YWWrCKqB6d+Xnmns01E2Rvagn7VG/KN9cjLfpF?=
 =?us-ascii?Q?RR8Qld2fmjR0/BZUFJ+FzE72q6OahranUKzYevpo1S3o7xtvv4cU/9afWmPC?=
 =?us-ascii?Q?sBX7JSfeYBslTxLOfR8R3KwgbIKLZPI+9PMxVGlKmKG6zTfOJWgpjVy3Attq?=
 =?us-ascii?Q?uI908KdPUdfNbKYURJB5Q6wQWgqBGIF8JIZaRhBax7vJqCQJpnJKzVNSm20E?=
 =?us-ascii?Q?Vkslz0Ld4nToNw+4gpxzfNxWEu2ZBTLmezxZEuWw33Bx7c5AX285bLJDNsiS?=
 =?us-ascii?Q?oU9lFYOvlPQMYyk02599E3wjjyfp+1oV8i0fmXijVNfrKnofNmH6HZfZg3Ez?=
 =?us-ascii?Q?IFh6uBsL6tOMBGbEOolm5BDwgNd3PDpEI7anNkyLtO7UdqZH7lgJX33KXM+j?=
 =?us-ascii?Q?k5bHAOFV5QpOsHwFHvHBOEelxQ+BDC/boNql4WftDYoo2piFArVkI+n+G7UW?=
 =?us-ascii?Q?uFiQZ38otmuFGwbdRXu9jribXrXWd0fn3ormv00iOHq7dTZ9/qiSUDs6R9Hs?=
 =?us-ascii?Q?zX1W/BNUgbocPz5bt29FzVE7k0azlrE5246nRXqVP54CAH8WnmsFik/T19sC?=
 =?us-ascii?Q?OJYZKizMRd3G787nXXmDRIsA9rm2LIbc9n/7BfN/ISeeKWf82H5L22Wbnxsx?=
 =?us-ascii?Q?Dtz4rMQJJ+Z0AlOBLHtLAR8pmTKO6goctnBj/C9dEbqPJeQbhyRtpwCfGtQU?=
 =?us-ascii?Q?5NwO5qXwvFhye/SZG2JcQiNh/HHtaSa3FVDPl8QaTIft663gPSeXJIUEHddz?=
 =?us-ascii?Q?+7kHxcg686I9H3wERSrWnai0ObcIUpZEPMEiDaPLhkeCl2uIYeH4wqfRdaBY?=
 =?us-ascii?Q?wJuqRR1rX2kTcHm0vGiE8NNsnz+e/nXeWSigJEpdAGDnDcTE0qzcWTooYniM?=
 =?us-ascii?Q?8obdOTG78ZNH2s9+T3aCsfrWxr2ObpEhVRwi9fFwXOsrUszEtl0nqDaXhGoF?=
 =?us-ascii?Q?GyKJoqrqgJdFjT+hgUvAeg89nvLB7uwlyH3yF1zdLU3z5ybZ5Qs8u1U6d3Sv?=
 =?us-ascii?Q?faysqseDy3Uwzp1/eXi/dZ9HgYD5qqQzo2Fhs/SwaT+bNUHCq+l9pVZavErR?=
 =?us-ascii?Q?+hoxvlKyfYRIl4MqG92yRhPf+VIqJRgpgIjWwfRIUzZ8VwxXkaI4WHgsq9KP?=
 =?us-ascii?Q?wP6811gRR+HBVvg/4qkAGMCnHviKmWw7uVaRzUd3Ve5R+ZCFGHKt/ddcAdrF?=
 =?us-ascii?Q?Exu995ktV1+GPW9BOUJNu1WVS2eAq1xupFb22Ju/nhCBZLmgcDcdmjpzyJkD?=
 =?us-ascii?Q?PU8LhAhDfUQIPw14z24d6L0PM1vVTA2fULKkLgt3?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5188.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 16eb95df-4532-4fbe-a8ae-08dbd501a129
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2023 02:25:17.8199
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Kor143Bs4GDoN22Ps1quJQtgqFhYVWOp9RdgwGL/q1HVoTLnrM47cnAOJjnY2TKt4jAUz+LGE/qSdZpoldPLPg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8117
X-Proofpoint-GUID: ydie7U6U-GsM_b6XqYPqNXiszHCC_o2Z
X-Proofpoint-ORIG-GUID: ydie7U6U-GsM_b6XqYPqNXiszHCC_o2Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.980,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-25_01,2023-10-24_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 spamscore=0 impostorscore=0 adultscore=0 suspectscore=0
 mlxscore=0 priorityscore=1501 mlxlogscore=999 phishscore=0 bulkscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2310170000 definitions=main-2310250018
X-Original-Sender: meng.li@windriver.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@windriver.com header.s=PPS06212021 header.b=YmaR1WkW;
       arc=pass (i=1 spf=pass spfdomain=windriver.com dkim=pass
 dkdomain=windriver.com dmarc=pass fromdomain=windriver.com);       spf=pass
 (google.com: domain of prvs=8662701a17=meng.li@windriver.com designates
 205.220.178.238 as permitted sender) smtp.mailfrom="prvs=8662701a17=meng.li@windriver.com";
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=windriver.com
X-Original-From: "Li, Meng" <Meng.Li@windriver.com>
Reply-To: "Li, Meng" <Meng.Li@windriver.com>
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



> -----Original Message-----
> From: Alan Stern <stern@rowland.harvard.edu>
> Sent: Wednesday, October 25, 2023 3:23 AM
> To: gregkh@linuxfoundation.org
> Cc: Li, Meng <Meng.Li@windriver.com>; linux-usb@vger.kernel.org; usb-
> storage@lists.one-eyed-alien.net; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH] usb: storage: add shutdown function for usb storage
> driver
> 
> CAUTION: This email comes from a non Wind River email account!
> Do not click links or open attachments unless you recognize the sender and
> know the content is safe.
> 
> On Tue, Oct 24, 2023 at 07:11:31PM +0200, gregkh@linuxfoundation.org
> wrote:
> > On Tue, Oct 24, 2023 at 11:58:37AM -0400, Alan Stern wrote:
> > > On Tue, Oct 24, 2023 at 05:45:40PM +0200, gregkh@linuxfoundation.org
> wrote:
> > > > On Tue, Oct 24, 2023 at 11:35:19AM -0400, Alan Stern wrote:
> > > > > Okay, that's a different matter.  In fact, I don't know what is
> > > > > supposed to happen during a clean reboot.
> > > >
> > > > Define "clean" :)
> > >
> > > In this case, I mean what happens when you give the "reboot" command.
> >
> > That's a userspace binary/script/whatever that can do loads of
> > different things not involving the kernel, so it all depends on the
> > user's system as to what will happen here.
> >
> > Many "good" userspace implementation of reboot will go and sync and
> > unmount all mounted disks in the correct order, before the kernel is
> > told to reboot.
> 
> Even if the filesystems are unmounted, the kernel will still probe the drive
> periodically (once every few seconds) if it claims to have removable media.
> Failure of those probes won't hurt anything, but it is likely to generate an error
> message.  I don't know if that's what's happening in this case, though.
> 
> > All we can do in the kernel is act on the reboot system call.
> >
> > So perhaps the original poster here can see why his userspace isn't
> > correctly shutting down their storage devices?
> 
> Meng, can you do this?  Maybe you can fix the problem by adding a script to
> be executed by the "reboot" command.  If the script writes to the "remove"
> attribute file in the drive's sysfs directory, that will unbind usb-storage from
> the device.  It should give the same result as your patch, for clean reboots.  It
> won't help "reboot -f", though.
> 

Ok! Got it.
In fact, the reported error is not critical one. In my real work environment, there is not the error because there is not PCIe-TO-USB card installed on board.
The issue is reported to me from our tester who used the PCIe-TO-USB card to test the PCIe feature, not test USB feature.
I am ok to NAK this patch. The primary intention of sending this patch is to raise up the discussion about whether shutdown function should be added for usb mass storage driver, and I have got what I want.

Thanks,
Limeng

> > > > > What happens with non-USB disk drives?  Or other removable devices?
> > > >
> > > > It would have to come from "above" in the device tree, so does the
> > > > PCI or platform bus say that they should be shut down and their
> > > > child devices?
> > >
> > > Well, the PCI layer invokes the HCD's ->shutdown callback.  But the
> > > usb-storage driver and usbcore don't know this has happened, so they
> > > start logging errors because they are suddenly unable to communicate
> > > with a USB drive.  Meng Li is unhappy about these error messages.
> > >
> > > Adding a shutdown callback of sorts to usb-storage allows the driver
> > > to know that it shouldn't communicate with the drive any more, which
> > > prevents the error message from appearing.  That's what this patch does.
> > >
> > > But that's all it does.  Basically it creates a layering violation
> > > just to prevent some error messages from showing up in the system
> > > log during a shutdown or reboot.  The question is whether we want to
> > > do this at all, and if we do, shouldn't it be handled at the usbcore
> > > level rather than just within usb-storage?
> >
> > We should do this within the usb core if we care about it, but why did
> > the USB device suddenly go away before the USB storage driver was told
> > about it?  That feels like something else is pulling the power on the
> > device that is out-of-band here.
> 
> The device went away because the HCD shut down the host controller,
> thereby stopping all USB communication.  The usb-storage driver wasn't
> informed because this all happened inside the HCD's PCI ->shutdown callback.
> HCD shutdown doesn't do anything to the USB bus -- in particular, it doesn't
> remove the root hub or anything else -- it just turns off the host controller.
> 
> Since USB class-device drivers don't have ->shutdown callbacks (there is no
> shutdown() method in struct usb_driver), they don't know what's going on
> while a shutdown or reboot is in progress.  All they see is a bunch of errors.
> 
> Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CO1PR11MB5188998FE62B30C3CA83A6F8F1DEA%40CO1PR11MB5188.namprd11.prod.outlook.com.
