Return-Path: <usb-storage+bncBD4JJBHQWAERB7NMRCYQMGQEKYIXI7I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc46.google.com (mail-oo1-xc46.google.com [IPv6:2607:f8b0:4864:20::c46])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9778AA8C6
	for <lists+usb-storage@lfdr.de>; Fri, 19 Apr 2024 09:00:15 +0200 (CEST)
Received: by mail-oo1-xc46.google.com with SMTP id 006d021491bc7-5acd9a8a58fsf2429083eaf.2
        for <lists+usb-storage@lfdr.de>; Fri, 19 Apr 2024 00:00:15 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1713510014; cv=pass;
        d=google.com; s=arc-20160816;
        b=YRecje2k73TLUYch53gy5pnd+Nn4pa2hqBHDbss0Qp0QTSa0tZXmTd+sH05vEdTOoI
         L4uLcuJUJUTfw/8m1uvKnrEmYOKq6q/7MECTMahCjJSXwnh/POVAaR6Dsv0BRUWRWHfa
         3srUD3a6RWASN5jUDRUx1aL+Z1qG/Dwo9GvTEehK2HW7AWRqdeRmdfgAu961fo8tSuDp
         tMPQh5wOd+4jtklAR3kJoo6R+xxl/dCJbzg+milxKUuk9OhWkNGQvXjK5D/e03wt3nP+
         03o4o9WQeeJaQquVz5P2HCdKmzVBrdmybeJijjUetxg+bGKso8lbYka0aVRzFxCvzgE8
         s25g==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:dkim-signature;
        bh=WeRfe6r/KlqGt9Q9a9K2V7Ft0rjODiDD8A368oBuTus=;
        fh=R0WHRJN8K+2eS0z6VXKRqk2aVe9JUpjr5ArLvt6QMW4=;
        b=VwWXIUntN+0x68TOpipKWM7SqOjoGUFNxxZ7NaUqYCoor3tb7w8CXhyouCmiOqudJR
         /DCQsilXVn5sdc1A5jHSfrkgZ9VaDzTCe3iZ77XI7OqT+QT4iXJZyqTUEcz2hWx3Z8+7
         Ug67aAxiR/kXMRUYr5hl0L8QJYUiavU/EQ36W665d+SFioabqARSUUYkXXUTNdpo8MvA
         6R8KA/L41jIEE80wLVWk3kJ4pzQC0oWGKeDpuxv4e0L4o2thgcZBRNpMYdRcvL5f4NO0
         yGaYJjwilgQBlP8sUTsl0z0FA/f1Rv1+6LQSi2Dn7XuyRqQjIvUK7EEdf2C4+VtR/Zjy
         38HQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector2 header.b=CbVDsNfP;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::601 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1713510014; x=1714114814; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WeRfe6r/KlqGt9Q9a9K2V7Ft0rjODiDD8A368oBuTus=;
        b=cw2C03hiJbjRT7IRBiboiR4qsM97urMyZrUZ6TaclNrcuGbiwTPSnwMtn3QlAFb3+K
         hk5It6YHth5JjBWYeDBJmeT/Wc+fN+0dhugOihFTOzpieXV8h/8nGIPG+ZBnQuHyTLxd
         kaKCr5eDhOiZgA+GGELDMf1x6B5ohsJ9Dw+IY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713510014; x=1714114814;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-transfer-encoding:content-language:accept-language
         :in-reply-to:references:message-id:date:thread-index:thread-topic
         :subject:cc:to:from:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WeRfe6r/KlqGt9Q9a9K2V7Ft0rjODiDD8A368oBuTus=;
        b=OAK4vEYZaR3XCR5jRLVfPCHRPWWzT4sfIKWPjFh6JLjVEqu0PBR5cHxN15mBYlsIvU
         AGTKrdF/hKsSQYahjTdC88j3bGTxV57en/qsYip+aMJ7Gi6knRfwP+iLJceWdlu2sbyM
         hUrIh4Puw/EHWXBQ8YXBSxxAVOB7dPqx4YirsjdWCcuFAE40Hd2L76mRbdtr20WA69IK
         EmB3GQRVQsvjXZW251QinTmQRSesP5z/8ZNrrsdGMLjbDuyW3503rjvfSIa7uagWe/sN
         CJZW9F0Xu8vRtZHgLd+il+jx9idQ+sCxG05Re5xtsqaBc5ECrsvP8Ai3dO8M1JguS64V
         uj+w==
X-Forwarded-Encrypted: i=3; AJvYcCXIX5CA8taIvl9I8ALoIpFWLPDyndJk1UEt+aO6qIybRc/fvtprEDBHIuY9tlk7lJUZVDxAjDRQpYUgBLJ9c8OIepiDR9hY9PdO
X-Gm-Message-State: AOJu0YwvfZDi5TYvF2XbKlZQUWARYxB+C+t5JVeLtDnGrW/G/HxVO9TC
	OiGlUJT0+R0xt9j8ZgRFkTliSN7kRe55qOpIk3IdxSqfJwy5tjC3mHxvupyOHmY=
X-Google-Smtp-Source: AGHT+IEh31mnxX1M2bmwJ9beFIwEgIkQ6Hygp2oTM/soIQ2v2STIEGJRkInqAOL0xYY4z1xKNihRXQ==
X-Received: by 2002:a4a:d2cd:0:b0:5ad:ec7:1977 with SMTP id j13-20020a4ad2cd000000b005ad0ec71977mr1453571oos.0.1713510013969;
        Fri, 19 Apr 2024 00:00:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:ac0f:0:b0:5a9:cb2e:d7f1 with SMTP id 006d021491bc7-5ad0bdff783ls743241eaf.1.-pod-prod-08-us;
 Fri, 19 Apr 2024 00:00:13 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCVPk+S8FSKHaX5+HGlU0v+ArYWV9MVg6LAmUqNZIWu37Sovk7giFaMt0hmdn1s9UM2b2AOd47+5DaQk1qSJOq/PCwHhxyEiT1kzSHl562MiGEq/f5Y=
X-Received: by 2002:a05:6808:30a2:b0:3c3:d932:4ae1 with SMTP id bl34-20020a05680830a200b003c3d9324ae1mr1639243oib.35.1713510013232;
        Fri, 19 Apr 2024 00:00:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1713510013; cv=pass;
        d=google.com; s=arc-20160816;
        b=0kbQOffLTF++C8tXgkgfLGjd68Z4smQGnav3+lWX+fmoOAWIEz/ZuQ9Mj8tysMFcMe
         mkOi5e9i3muaIWdytpM0q9qXRjzvvkKkzAvb2voyDFDDLSZh45GLaoAzeb0+urEN4O1b
         efK5Htju5RC2fG4IawqBBB6kExfBQV6yS+5OeS4pRmdVDg/hwwozggbWeaXqZSypRq6w
         2LAXTiYyJYD26IHpXaujQg7vYx5eRJaRDC0/nujt6mBfS9NZqXVpeI/XcCC8NhTeSXTS
         cyWF1pGCiwgd5d4rGAY6ayIrQBlglU5oP3oeGGBj+o0EFQYsDH4USzlv3+CMzS2+3wRZ
         XJkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=+s9wvGmoVt1IQXfVpwtquY3/1bt3RZPJNzVXoh0DTL0=;
        fh=mJycdvbK4AAoszte/+AtLzJV2tLQ9Owg1ILy3f9pbTY=;
        b=ijrhCVP2yVH3RhAg1+mKQCKHv+csDdV7wjnKgIVsM5LdvmXmDjjH6jwszq+CyH3ca4
         5ne9y8Eo94rgcbFXl020hdqglBC25jmfjyplkRRNU0tKz5svMfzAiUGDJ4AbxWkLEPC2
         KhjNmbnisEw/2Ghr+W7CBZiHJWa2h7V0jZg21B1RdxOi+9g5BJc6xNuRZE0uWzy9h5Jy
         7AjqVp3W8HSuilukvS+T/jXhNcZ5veIFvPU6BhJiAtMe80NnHZinkNl3EjKdpzdrYiKI
         09qdU6z0WvwDVtzml7S/8MC9MvHnDXYiwG5SDNpL169TPDM4byMDl4x64AVKUxq2F3vl
         gagQ==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector2 header.b=CbVDsNfP;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::601 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from JPN01-OS0-obe.outbound.protection.outlook.com (mail-os0jpn01on20601.outbound.protection.outlook.com. [2a01:111:f403:201a::601])
        by mx.google.com with ESMTPS id m10-20020a65530a000000b005dc229b6778si2880478pgq.14.2024.04.19.00.00.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Apr 2024 00:00:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::601 as permitted sender) client-ip=2a01:111:f403:201a::601;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aE9H+yJM+BoPxgwv/4e4bA0IiXlQ4kqpn0pACC0krCC2RphPsaWYM3FFmbuyxA8SNyI28w+qla78IY4DxiGQYKDjCLFTN/d568cqU6qJ1+i4ax4LHhiXQxwCYqk/L+imJwsvkTD0RMtEfqFeOF+u7ul/mQT57FStLQ0oHpaordvn7FwmvXv1a/sA4Z/81vtIjJFRMveezcMvEHdSj5obRm6/UsJ9tqoXyee06PPgK3Dly+Nye1lfBAVpuZfohyDAE3mBoOFNyiiAilI9Z8e57wVtxVOJ3dUV87WtEaKqe9P9kYkexfqXnq7JDwx7xHmkpQ5ncH7CnRbsmLnRky2s3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+s9wvGmoVt1IQXfVpwtquY3/1bt3RZPJNzVXoh0DTL0=;
 b=cUnqpBMeYrhUHHQQjkCYjFOdfBuzZXuONoYjHCF/6+MeaxUcNNSl5N1FBqiRq9uU8WD464sqKNHOXKbAQwrFyjUToO45d7MoNwGi8my3WHxljFvfIIrt9zXUrBkfsEoDvWCMc5fqvYJd+z9kEsz6+SBRZJ0YNZIfp9KZ6h9DX5an5ZSwA4rMow0ti7RL3aI5HDvSYvE64i1JBiBSgoNF9bKKhP44tHpqj7ye48TwcBiCdHA8yDLFzNdS94czRC9QLDMP06OE9c5BDdDPipNGpfEXM4o4QxMuC4j1GRBRdJnZwBHYKpAOhHyJcHDoHpJDu0uO8brS+Y8qP1ilYjGHIA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14) by OSRPR01MB11567.jpnprd01.prod.outlook.com
 (2603:1096:604:22d::9) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7472.39; Fri, 19 Apr
 2024 07:00:04 +0000
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b]) by TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b%4]) with mapi id 15.20.7472.037; Fri, 19 Apr 2024
 07:00:04 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Alan Stern <stern@rowland.harvard.edu>
CC: "mdharm-usb@one-eyed-alien.net" <mdharm-usb@one-eyed-alien.net>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] RE: [PATCH v3] usb-storage: Optimize scan delay more precisely
Thread-Topic: [PATCH v3] usb-storage: Optimize scan delay more precisely
Thread-Index: AQHaj9cp7zT/I59KNkaCms5RMPC7hLFrrGQAgAN+dVA=
Date: Fri, 19 Apr 2024 07:00:04 +0000
Message-ID: <TYVPR01MB10781F18C77919205761743BA900D2@TYVPR01MB10781.jpnprd01.prod.outlook.com>
References: <20240416082821.10164-1-Norihiko.Hama@alpsalpine.com>
 <4d94b2a8-dd2a-4bae-9a0c-8125747f404a@rowland.harvard.edu>
In-Reply-To: <4d94b2a8-dd2a-4bae-9a0c-8125747f404a@rowland.harvard.edu>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYVPR01MB10781:EE_|OSRPR01MB11567:EE_
x-ms-office365-filtering-correlation-id: c2aaf53e-36b6-41de-7a55-08dc603e571a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: =?utf-7?B?UW9rc2lGZnRLRkRRQ3ZDdEN1N2RYRmpRT0VnOU5KRDlHZGIrLTB2YTBkSnBm?=
 =?utf-7?B?UzUxYnRvTTBYOGw0ektDNXVjY0RrVHdSNG9XcjNmVkM5MkpPTnZyZlAvbVNI?=
 =?utf-7?B?aHhraUFqL0d0NVNQUzRvV0tqOHZ4M0ZpYmtIQXRITTdhMzZQaExTNm1uSENX?=
 =?utf-7?B?U1cvSSstMENzM1JuTW5aZUtRNkdZR3prMVNOSkRPZHAvV0grLVZZWlJIWTJp?=
 =?utf-7?B?YkxtZkc5VkZUNmw1VURrRUt4VUR3SDRuSEQ1Y2JjdUM1ak9BTVYrLUhLRGFI?=
 =?utf-7?B?dGtRSWNMWWc4cDZRaVRZUmRxblM0dklkazJSR1VTNlE3WklsOHdFUi8xT0R0?=
 =?utf-7?B?a3NtYnlLSllsVXZ5SE1zbE9weHhnVnAwL3ArLUNtaUkvcENBdFBpaGVjTUhZ?=
 =?utf-7?B?SVJaQy9ZOFpHaGRqL1lRTGxiT3JXNE5udERKZUQ0OXJuREtWT0tNeFM1dHJH?=
 =?utf-7?B?blJ5VmdVRjRjaFBvRmRNZSstTlBrRVpXdjhyYi9WbHNFTnJKQVBvV2RFV1hi?=
 =?utf-7?B?R2puQkMxd3RFdE9EOHJZSGpNQmovZWgzdVpCN0labno0MDQ1TG1RSzJGRlY5?=
 =?utf-7?B?bVR5SFc2UEhoWmpqM3lBL2V1UlVhLzdmbHR2SkRzSnQyNmo1OFFlRk5mWW9X?=
 =?utf-7?B?SkZRVmRkYUpqUnYwTlJhSm52OURIczQ4VUN0YjY2TDgwVlRRRWNDZERsNWNJ?=
 =?utf-7?B?anJJeTZiak0vWkdRMXd0SUlQTkxjRnFMWVVUWVYwUlBCS1dSWWt2c2tBYzFu?=
 =?utf-7?B?dC83UDdRNkpOSjFhSk8vOHJ5N2VtWWRNTDllNTEvVTJVaGNxTW1QOWFKQjNU?=
 =?utf-7?B?c0lFNWJ5dkgzYW5lSDFGNlBwamJNNXFkWFN1SEhnSVdIWmpzSk93YzRudndr?=
 =?utf-7?B?czIzS0txTHI1VFFiVystbEhWZm14MlJQL3EvdHRVVGRwTUdXRWF4SGw5L0Zi?=
 =?utf-7?B?NXBEOUdLcmhIZ04zNndOcnpzOUdQVmc4U0dNTUw4Sm81bThrVG43UEpqKy1C?=
 =?utf-7?B?ZjFDaXd6MFFaeVE2NUlxczJvKy1rUFh4OXRtZE5Kd3R4OXd4REozUWFIQ3Qv?=
 =?utf-7?B?ei9OUlNQSmpKR2hTeXVLemwxYnhNY2hESmdJc25pbno1Yjh1aUoxVkJIdEJQ?=
 =?utf-7?B?Nlo2TmFZRXV4VlJlRzJyMmE2cGtid2VkcTJPUHhIZndIN1ZDQmVRY0J5V1VH?=
 =?utf-7?B?WHBXZEd4RGdta01WZWY0VWpsalkwR3B1WjRoZUxNZTdkNzI3TDZZelFmWml1?=
 =?utf-7?B?OXhLUzZOb1VhQUtVMTBhbmVBWlFQcEkvVFFBZWNQSFBVcFB0R2xIYTVjZjVX?=
 =?utf-7?B?dkN1VDVWbzBNak0rLUk4NVJyVEhRN1MxdWNqMHhpcystaVZ6QS9sd3BqQWNj?=
 =?utf-7?B?YmFxTGpGbnlXZlhYbDdMZGlDcFVhcmYwaGo3b2hYcHVTQUVvKy0rLVo5UmJm?=
 =?utf-7?B?ZHUzQlhhcThxMnZuOWJJNjV6YXFHVjhiZTJHOHZCKy1IcnpUL2J0VW0xanZS?=
 =?utf-7?B?YjBNbDA0SUxBbmFIV29tbDN6eWNjTWE2MUJDeTFzNm14akFSaEpubmxBVVE=?=
 =?utf-7?B?Ky1Fa09ZMEdjSktmOUxuRFlTSGxlKy1kU3lreHBWWXFvYy9GUC9ZRVlvZmZW?=
 =?utf-7?B?MWlFOEozcVlCaWp3blA4MS9ZU3UzcVZ0dExtZ1c5eUpKQ0hJdEhNdXl2alk=?=
 =?utf-7?B?Ky04Nk05Ri9kc2UzUG03bW5NUGR5UUljd2ZUQzNCaTN5Nm5iVUl6bVk5aE1S?=
 =?utf-7?B?UXdYOTNFN3F5NWpsUENWTTM5SjhkNWhNcUc0M3JJVU1HMTc5ejkybzV3ZFVn?=
 =?utf-7?B?WWpIZ2h3VFY5Z1hTYVR2d2VPeHM2elpmZHVPc3grLXE4WHNBK0FEMEFQUS0=?=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:ja;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYVPR01MB10781.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(1800799015)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-7?B?VFNJa0Q5V0tRNTlWaERVc3JQb2puWXJ4cDg0RGNBZFdJMFhCZU5Ha09MeSst?=
 =?utf-7?B?NWJKeDdoYlFFMjAwT1VxZHJyYzBaU3NDVWNTLzIvUEViU0F2cm9NWXd6NTUz?=
 =?utf-7?B?cXVTaXlyaTFTd0dNYXZXSnE4bHZFLzN2d3pkMElOMCstbmtpNTB4bnptZzJG?=
 =?utf-7?B?Q1ZzV2hzR2l6Q0Y1cjU3bHFlTWdMZEkrLUZDZ1BYeVR4dVQ5WTdZRnFXVkU4?=
 =?utf-7?B?SktMQWZVQkVDeTJJeEUrLUVoVU1IcjQzSHp2Vy9NcGUrLUNPY0w1RjRFRkh4?=
 =?utf-7?B?OVFyU2J1V1EzbjJ1QVoweXJPMmp1WVV1UGkzQ1c1Vm5QZDdaTncwT3luNFRs?=
 =?utf-7?B?ZXo5UEw2eWNBbnlKYndvMnI0dWljM0FmaUZRZ1lhQ3U0NkQ5NGhlY0xJZFJB?=
 =?utf-7?B?NDhseUlXS3BpZEZKMUI0VnFmRm5CRldqNGxtTk5hWnhNdFBScU1ud0VZVGZn?=
 =?utf-7?B?ajJYNUJ5aXNWVVNmSGorLVpDYzNQMWhNMEhaQnBDV29OckR1eXhva2ViNE12?=
 =?utf-7?B?NUkyYlpzM3NNekZnRGNaMXFQdTlNNDVFVzdvUFZmdUpZQUlVbko1RDFVWUNt?=
 =?utf-7?B?SFpVUmswNHdwOUhha21udjNmd3JpNWpvWFJZY05LSGdkemJiUkxmQlZVcFlO?=
 =?utf-7?B?ckljNUNDS3BDam5SaVFTc0NuT2lidVlxNmRIY2ZiSVdLNVBYbVVLTFEzSDJu?=
 =?utf-7?B?c0UzVDM2Sk1ZOUplNXdaSHJWa2ZGc0orLWdSTGtlNUhYRHAvYnNKMGlVdTJj?=
 =?utf-7?B?V0gyYnpSTDNRbkhyYVJrd3B1VHhjblo4L2N0QnYxM0l6TG9oMEd2ODYweExF?=
 =?utf-7?B?cDhKcTE3c3hRd1NpbystbllLT3djRjJCQTJ1eEs4VXplMUc4SG43Q3VxeUlD?=
 =?utf-7?B?dnFKQ1BuQ0wrLVhyUkR3QUk5TXI4RXZ4bzZnTEV2SG5QcE90dzBENVpmdDdN?=
 =?utf-7?B?Mm9sRVJYc0VFby90OU5zVUtQei9UYUFUUHd5a0VUZ0lTaXRMeDdhN1BmbjBT?=
 =?utf-7?B?VmZTd2lIT1JZUS9Bc2xLdmhmb2w0T2doTGNLaXlLaVVyVTZiVFVkMy9YKy1n?=
 =?utf-7?B?Z2syUkZXdk1taUI2RUpod1ZvcWt0cWtYaTR4R0VCVEgvZkJMcE5Lemp2TkZt?=
 =?utf-7?B?Uk1LR1pUTE40cXVBUHF2SmNQWDRYdnkzalRLQXVZV0FRb0JvWCstTmF1RFpk?=
 =?utf-7?B?WmV3L1NVakJwS1l4dlJJZVU4dExJUGl2bnhyVTRSNzBocUxyUUlkNHZxTFht?=
 =?utf-7?B?WWpTUzBFY216OVVTZU1zN1pVYVJCaTQ2bzBFRVN2emNjWCstZUNWNXlrdXc2?=
 =?utf-7?B?UDIyOU5DZ1VoR0QxOFNTSlBDZmFBbEg5U3ZOYUwyQmVqd2dlWENtcystbVA5?=
 =?utf-7?B?WTd6ckl5WmVIdmhyWGFZS00wZDIwNUpyYWx6MkJwUGhQeWtIQzFTMm9jZ3pT?=
 =?utf-7?B?dFZaV0UrLThLblJxbEdpL2tNMDN2L2w2RGVta3ptM0xDb0pMTndSMGJrR1Nk?=
 =?utf-7?B?SGpQV1lidzZEUzd2NmhPM1JralVPZkMxNTVtMHZScVlFWCstNVhmdkhGRmVF?=
 =?utf-7?B?Sm13aDRlSnlFeDdId281NjlEc3lIR2wvV2EyejBjbFJDbDduNWsvZjlGVWRm?=
 =?utf-7?B?WjZRZSstT25pWk5raFlwYkwxS0FlSUN0RXJ6WW9Oa3dHMGt2R2ZQU09FanhU?=
 =?utf-7?B?MlVkdDEyKy1BNVVsTjNSSFdYMWlUcWxLbWdZTklFZ1hUQzRuRm10dDZaaFVp?=
 =?utf-7?B?ekNNaVp3dE9QS01jSXF3d1lmRE9keXBvdU01YnErLXAzajRzWm1NQ3pTV0xm?=
 =?utf-7?B?a0pxV016T3hZT25RMUg3eWdYcDJESk1ZcllGMjJwS2dpZlpFUWd5aFhZQUQ3?=
 =?utf-7?B?a1AzWUZXcHVJUTlrZUtocUFFSmxPT3N4bFo0Vm40WUh5akdCRHVVM3dvVWpH?=
 =?utf-7?B?QkFtN1E2Q0ZQMGRpMTAybnpiRHFiTzYxemhwV1RITHVLS1Y4eGtJdUFNUEho?=
 =?utf-7?B?bC9YSjJ3YnppY2EwT3dmRVBiLzYzZVluSDJKKy1OTDFMWWVZRVdvWHpIU3lo?=
 =?utf-7?B?anY0YzFqYUc5V005Ky0vaUFzSW52YmcyNGhYTE1sS044dGNEQlBBU3JjT2ds?=
 =?utf-7?B?OUZtWENUN0tjcVhJd05ud1dPenFYam9iUFRhY3hSVVlteDZ3QWY4VG9YdFVO?=
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYVPR01MB10781.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2aaf53e-36b6-41de-7a55-08dc603e571a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Apr 2024 07:00:04.5308
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zGkxW+TgZ4TVI44T6uBiKxzBZPDpYOpdq2COd24tRpiFDR5Qn0lCxQqGDHrB231b4c3upZvy/q00/3eMxjctDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSRPR01MB11567
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector2 header.b=CbVDsNfP;       arc=pass
 (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com
 dmarc=pass fromdomain=alpsalpine.com);       spf=pass (google.com: domain of
 norihiko.hama@alpsalpine.com designates 2a01:111:f403:201a::601 as permitted
 sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;       dmarc=pass
 (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
X-Original-From: Norihiko Hama <norihiko.hama@alpsalpine.com>
Reply-To: Norihiko Hama <norihiko.hama@alpsalpine.com>
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

>> On Tue, Apr 16, 2024 at 05:28:21PM +0900, Norihiko Hama wrote:
> At this location you're supposed to describe how this version of the patc=
h differs from the previous version.

Thank you for your support.
The difference from previous version is parsing parameter by kstrtouint() o=
nly with padding to 3 digit '0' based on your advice.
I'll split parser function and simplify get() function on next version.

>> --- a/Documentation/admin-guide/kernel-parameters.txt
>> +++ b/Documentation/admin-guide/kernel-parameters.txt
>> @@ -6190,6 +6190,16 @@
>>  	usb-storage.delay_use=3D
>>  			[UMS] The delay in seconds before a new device is
>>  			scanned for Logical Units (default 1).
>> +			To specify more precise delay, supports 3 decimal point.
>> +			The range of decimal point is in milliseconds,
>> +			hence the minimum value is "0.001".
>=20
> The text could be better.  For example:
>=20
>			The delay can have up to 3 decimal places, giving a
>			resolution of one millisecond.

Thank you for your adevice.

>> +			Example:
>> +				delay_use=3D1
>> +					1 second delay
>> +				delay_use=3D0.1
>> +					0.1 second delay
>> +				delay_use=3D2.55
>> +					2.55 second elay
>=20
> This should show all 3 decimal places:
>=20
>				delay_use=3D2.567
>					2.567 second delay

I see.

> As I said before, the parsing code should be in a separate function to ma=
ke reviewing the code easier.  It also should be written more clearly.  Her=
e's my attempt (not tested at all).  You might prefer to remove some of the=
 comments; I put in a lot of them.
>=20
> /**
>  * str_to_fixed_point_uint - parse an unsigned fixed-point decimal intege=
r
>  * @str: String to parse.
>  * @ndecimals: Number of decimal places in the fixed-point value.
>  * @val: Where to store the parsed value.
>  *
>  * Parse an unsigned fixed-point decimal value in @str, containing at
>  * most ndecimal digits to the right of the decimal point.
>  * Stores the parsed value in @val, scaled by 10^(@ndecimal).
>  *
>  * As with kstrtouint(), the string must be NUL-terminated and may
>  * include a single newline before the terminating NUL.  The first
>  * character may be a plus sign but not a minus sign.  The decimal
>  * point and fractional digits are optional.
>  *
>  * Returns 0 on success, a negative error code otherwise.
>  */
> static int str_to_fixed_point_uint(const char *str, int ndecimals,
>		unsigned int *val)
> {
>	int n, n1, n2;
>	const char *p;
>	char *q;
>	char buf[16];
>
>	n =3D strlen(str);
>	if (n > 0 && str[n - 1] =3D=3D '\n');
>		--n;
>
>	p =3D strchr(str, '.');
>	if (p) {
>		n1 =3D p++ - str;		/* Length of integral part */
>		n2 =3D n - (n1 + 1);	/* Length of fractional part */
>		if (n2 > ndecimals)
>			return -EINVAL;
>	} else {
>		n1 =3D n;			/* Length of integral part */
>		n2 =3D 0;			/* No fractional part */
>	}
>	if (n1 + n2 =3D=3D 0 || n1 + ndecimals > sizeof(buf) - 1)
>		return -EINVAL;		/* No digits present or too long */
>
>	memcpy(buf, str, n1);		/* Integer part */
>	memcpy(buf + n1, p, n2);	/* Fractional part */
>	for (q =3D buf + n1 + n2; n2 < ndecimals; ++n2)
>		*q++ =3D '0';		/* Remaining fractional digits */
>	*q =3D 0;
>
>	return kstrtouint(buf, 10, val);
> }

Thank you for your help.
I'll reconsider the code changes and test it.

>> +
>> +static int delay_use_get(char *s, const struct kernel_param *kp) {
>> +	unsigned int delay_ms =3D *((unsigned int *)kp->arg);
>> +	unsigned int rem =3D do_div(delay_ms, MSEC_PER_SEC);
>> +	int len;
>> +	char buf[16];
>> +
>> +	len =3D scnprintf(buf, sizeof(buf), "%d", delay_ms);
>> +	if (rem) {
>> +		len +=3D scnprintf(buf + len, sizeof(buf) - len, ".%03d", rem);
>> +		while (buf[len - 1] =3D=3D '0') {
>> +			buf[len - 1] =3D '\0';
>> +			if (--len <=3D 1)
>> +				break;
>> +		}
>> +	}
>=20
> While this could also go in a separate function, it's short enough to kee=
p here.

OK, I see.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/TYVPR01MB10781F18C77919205761743BA90=
0D2%40TYVPR01MB10781.jpnprd01.prod.outlook.com.
