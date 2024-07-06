Return-Path: <usb-storage+bncBCFP7G4HQQGRBEPFUS2AMGQESEHI4FQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 641A792936B
	for <lists+usb-storage@lfdr.de>; Sat,  6 Jul 2024 14:03:30 +0200 (CEST)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-6b5e0f00d63sf30956266d6.0
        for <lists+usb-storage@lfdr.de>; Sat, 06 Jul 2024 05:03:30 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1720267409; cv=pass;
        d=google.com; s=arc-20160816;
        b=uNNpr/XlOIGRL3g+awarbziBzGpzxRB79kYdMNRHAdc3Ie0NszPWMI9Qvo07U7GaHU
         61NLW8FkVVHwwsfW3GeSjc1Xy3SJ9seH3N4EwU36cez0Jn2otaSGefS51D00cuk3i1jg
         ZbIfZuozrIWhEWsCQF3TA2aIfAGPj6BVDtTzpxGd5lO4Ygj+S3PjPOSF/WFmhYVd55j0
         e+waBHmIycWCTjEAPLnSpuLy+Glb29AUbnw7qHnAkR8Rct1RCIkzYOv/B9OlvB4MU/fX
         fxfHX+PRbuT2a5IqNvWEpLP6Rjd/r3fQEbnsn3ghdjrT6ihRQ6dGanW/BsldDdjMnO1d
         JeHQ==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-id
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:sender
         :dkim-signature;
        bh=XfldxH3QNAIF1vIL+a8vfkeRzYpAOyC80DnHch+OGHo=;
        fh=TScrHkQEXo+h07Ah8EP+PM45tv+3lUnCHVBsCkfvTCE=;
        b=w1Fu5iTt2/21SK+Kx0YAjNXoQeuOSteOiU6Sx4czUWOKv0jC48hNPIyxHKjX8YXTx/
         sFHVrXBaooUFRYB55kgWms8hkqC37y2Ic36zth2tunoBag6OzZXE2fqkKtXq0M2gia7j
         xme621z4OWSWyC4LGCaIvI//i3YNS7z/0Ez0Zhb2CYV1kUPIQSZ7nfW4hfBQSG0FPB4k
         r9pvVzorVYcXm0R7UQnR3sAfHKzGTOkdsTxW95FVp0JTS6MuRaCsiq/SpogybypVrGIc
         VcQhMuxXaHAZl51dyQJpLyBVZ4WBTDxSazCvfnsqkK8rTIIQb94r5pFY9k4bEQmTJMBw
         Qr2w==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=fwDHqypy;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::81d as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1720267409; x=1720872209; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:mime-version:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XfldxH3QNAIF1vIL+a8vfkeRzYpAOyC80DnHch+OGHo=;
        b=M0muc7qvb7vLySfrtnWWJiktiWonw7ZdNII9ZOZrD9Ms++SJZ+wRR6nUVATO89djYW
         0W0JfI4+OBVsUDJc5d6AzNlHDtI9LPCtGhdVYsNAGifuCwyqJqIAKuv5HNIacJDYtLP0
         LLW8Hd0U9don3qvzU7iT17PEBje1vo8IukfTU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720267409; x=1720872209;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :content-id:content-language:accept-language:in-reply-to:references
         :message-id:date:thread-index:thread-topic:subject:cc:to:from
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XfldxH3QNAIF1vIL+a8vfkeRzYpAOyC80DnHch+OGHo=;
        b=ugDFV7HELkYk2x5Cavn4ErVs9GkJbPIT0rE6V5g26gjBeERVEzxg+SARziddU63SeJ
         /WGsfTYnpLaNn2M6fZbcE3r8zbZ015Bsc71ncmbUZDnD0+pvtMcLqujQl6jmstysnRBh
         ctIznHyQGdfLyeJUHeh9hDhNgttxSaBKr2ybkwiAPFDsEsehLqDF7OIhuZV5McEm3/yA
         bC+XAQpO+FYJS26RSXtVCyx6HCxtANKESkmKn0EZGTyQUdVmFZtEttqNbAk4ttKgjtjH
         p5SXIXAai1y1VQzF0l7qEZZgbFUAP/BI6MPbDb8qLTguA42vCxBui8xXnUvHujqxzJph
         DImA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=3; AJvYcCVY6XgHpieaOH1wuQnD5JfQPWfLuRhkNcygZV7gLDsPiZSqOL+t8Bh9q/fibSd1XySBKYkwFOjsS1rvTAVJoYQeK1Z30sj+HInN
X-Gm-Message-State: AOJu0Yz+1rWQC0YrxUh/y5SA7qa6DqA2bDMVUrb24yLJ5OoliUiVyZ7V
	vzfL3ejsHss4V8EFfskVpnksOa/qQQMSFXUolFgCMu0QKucZTH/gI5WIYvJaQQY=
X-Google-Smtp-Source: AGHT+IH3Zf8vp2f/cqQ2HXFp6VhLRpL3oQQkmzIXnGiDXQjsmR4j/Jfvd0Fi6pISYPRTGJnzH6UCVw==
X-Received: by 2002:a05:6214:ca1:b0:6b0:9479:cdc9 with SMTP id 6a1803df08f44-6b5ed03d663mr88453226d6.49.1720267409216;
        Sat, 06 Jul 2024 05:03:29 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:5294:b0:6b0:84a4:8f6d with SMTP id
 6a1803df08f44-6b5e9ef7334ls43073096d6.0.-pod-prod-02-us; Sat, 06 Jul 2024
 05:03:28 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCV2deA4AnFy/vpOkY03u06ZFikZk5pnD9Q+zrXFATQoXlTPHJVCnqC+qCRzbW0S5gbWJu5VZ3fLJkT+WENavzNW06ANNbeMcYZwBkRT7lOyCAvG3hE=
X-Received: by 2002:a05:620a:8c3:b0:79f:4a8:df46 with SMTP id af79cd13be357-79f04a8e0b7mr89818285a.69.1720267408344;
        Sat, 06 Jul 2024 05:03:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1720267408; cv=pass;
        d=google.com; s=arc-20160816;
        b=whRYsqdd1kFaBb4tXKqvwb1W7xmmefIT4c19O/O1di2YF1ywh+FVoHrbWKHzPGsq67
         HyZHKreuiEZbb0LUJ7MKj8IuFtWUyz5qx60OkDCO1/zz67rhjuKRrWbL7Y3DpHmglMWP
         X33vPyDLfkvXZtNvlRJhGPq3a0vyrhSFtknXtocB2CZ0vMpLgPKucQAba0WQ/ZrTsf3K
         1zDM6YvFyNM623vrEqUiKJHJvZtNRqjge365/0D1DJj5tn/WyRcwOmzOpTz5sGpT5kyB
         upOOmt45cebI42X2oXym7TXulJA+jiX4GwtmgdjtbqKPLkig0InTWT1nE2fOk4LCd1Xr
         j62w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=kwcLnKkbwNtSh+Fo870t0RFr7qhod0dYfmejPREligA=;
        fh=4HWS1BnKmyzr1jKtPfMCWRzQy1hmtF9bNCvfHraD4kg=;
        b=zJb22QmR1jnVkcI6Vet9s99dHpCt62ZTHm2WquzaQkoYX1cHu4sMKzLv+UlYGnlZ2J
         rkoKUxfM2QfqMDvoszjKB/7ihgLznFSJBWY3jomDJ0UI1Al4H2qECWZ7I6cUgQ/mEHJS
         /MA53+kFzyR3c5TLIV312FPU8favTUEjvgRIpRdW3w5YZZX6F6JTpFv6Z3NBC6mtPfGM
         NgGGpP6rUraiB3hpE6d/LUTHnP912fu5BEAWXVBmYUrt67eWdCSSs2QkUvtZRyvHTAG1
         knuo9J6GLaSl9Jb909FP+RQr4E//XZfxmTT03CF55iiDJz3+ns2x7lu5o6nD6gv+NqZ/
         M6kw==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@live.com header.s=selector1 header.b=fwDHqypy;
       arc=pass (i=1);
       spf=pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::81d as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
Received: from IND01-BMX-obe.outbound.protection.outlook.com (mail-bmxind01olkn2081d.outbound.protection.outlook.com. [2a01:111:f403:281c::81d])
        by mx.google.com with ESMTPS id af79cd13be357-79efb231b92si249088785a.785.2024.07.06.05.03.28
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jul 2024 05:03:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of gargaditya08@live.com designates 2a01:111:f403:281c::81d as permitted sender) client-ip=2a01:111:f403:281c::81d;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MUcq6yBcdXvafI7m3dkUPYgnFQtibjsDWF4z1I2rXq/KWDOhWclgwR1gfYFW+b55+32AL4YSoj9SmqhorXLeokQW2/o4ZpR/X49oo606o1o/zA3B0Dk35jkPGCFc45a1eYViQhnTyJTe2qsf66ufGhkEivWVbu5l5jMecS/eydeLKDJ7s3jSuL428SI10gClc1gsipQdPKCKR+2cZHjD7VqnvZhjofCjolwP/7swc2v1HNSdPkUoW1eGE3vaetWsRk9e3iWwu4Kavb/KguESRl7KcskVHCnAP0/0MfrygXSgqCK/zCHodwTuVBR04zMxIs5cDn8rvbua+ark8I5PRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kwcLnKkbwNtSh+Fo870t0RFr7qhod0dYfmejPREligA=;
 b=BM2ea+VbJt/3x57rzWp/B03Z8MZ/QewYCgX43PahAIl9t2sYhp4Sj0vLcOs1w9DBMzWa5E2tbbWEcSflf7UWV+fIfuz+0dmM4XN+hZhau28ItdAR1XV4z55s15A7ReK6sduJesZwswolFU0+vwHE1HbgADztcUizwlcpj3VVu0ZBn0+kDrvqLwCj/M5xLeuUZFM3/MCryBAQ4wUfRX/Y4w6t6QkwAXMRXbEfUDjCYez3T1+l6qOcX7q+BkqQcbSzrid+ubdLgmNYaFDykLPU6DzalHkzYftdRHDDT+vU+zivB4TEzA2zfzW2p//uxD7XxvMbJVoOX+nBrpAoWBSMvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM (2603:1096:a01:b3::9) by
 PN0P287MB1624.INDP287.PROD.OUTLOOK.COM (2603:1096:c01:17d::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7741.29; Sat, 6 Jul 2024 12:03:23 +0000
Received: from MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a]) by MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
 ([fe80::98d2:3610:b33c:435a%4]) with mapi id 15.20.7741.031; Sat, 6 Jul 2024
 12:03:23 +0000
From: Aditya Garg <gargaditya08@live.com>
To: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"oneukum@suse.com" <oneukum@suse.com>, "stern@rowland.harvard.edu"
	<stern@rowland.harvard.edu>
CC: Kerem Karabay <kekrby@gmail.com>, Orlando Chamberlain
	<orlandoch.dev@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "linux-scsi@vger.kernel.org"
	<linux-scsi@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] [PATCH v3 1/2] USB: core: add 'shutdown' callback to usb_driver
Thread-Topic: [PATCH v3 1/2] USB: core: add 'shutdown' callback to usb_driver
Thread-Index: AQHaz5yATQSWsAoR5EajX9/4d1hpBw==
Date: Sat, 6 Jul 2024 12:03:23 +0000
Message-ID: <7AAC1BF4-8B60-448D-A3C1-B7E80330BE42@live.com>
References: <58227E2C-1886-40AD-8F80-7C618EF2D8F2@live.com>
In-Reply-To: <58227E2C-1886-40AD-8F80-7C618EF2D8F2@live.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [U4rtLmwegwRIHk+0PwiZxhf/nvZs8+RJq4PD412TrtedcSJXzEzQPGwLXhHna4urC/YGCPi0ktw=]
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MA0P287MB0217:EE_|PN0P287MB1624:EE_
x-ms-office365-filtering-correlation-id: a11fb56b-9440-4ec7-74c7-08dc9db3a297
x-microsoft-antispam: BCL:0;ARA:14566002|8060799006|19110799003|461199028|440099028|3412199025|102099032;
x-microsoft-antispam-message-info: AUQCQOOfy/usDIygSCWcZEFJkbh3cl9fyAPghxReHdVgkuWQGwKpRe+jwolSE+9BhhnytmK2tomuNN6aQKQVnd8LTlq4uRfJjEVIGf3VWpkWtrUEfS44grNrrdC1bqEKAfQsG4xztnfmDsmcs95wzQ03522qS2XEJdsM/qCM6YQiMHo5wjTGsrByyXwWGLkthsnjs47LsC0zpt2zUDM+2f1LoobVbI98jUzHt8eBTN4K3OBTQO5ibQmzHNbA/RuGZPX1yqKPiKoVQVsEqKN7CJvU/m4VEwZUAaL/6qGcWQ6wq0/hj7p+jlpm50bhkK99hilYpltKVP2AzDfD7t8IO8EVwVkqwTwwwnX1aem0khNO2dJiEl6P8ZUiZhkpBH0MO8BgmbiuRC5v8bzcp1XSxuMNmr8RKqaO7sIu1tDI3REqKwDmHRDGgggO/tp49PmFKjUymQWFiRyNC3SZWKw3Cq0yFeJbu7Tf14+v7xkba2vV6naUs0Ff5mIPDhKejzNHDhern4c1A1gfQhQy0oUFkheyoeg/UiyHYMbOmU5Pb6Oau2TEeOQrTmE+XFEf5IWflirt0QoqhvAmwdlEjKTYIh0/msIFl4EmWEmF9IZEFCnsjaYmmfBPpbH/yqGEyIbOpm3KH3uX/hiC5vxzJFHOXA==
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?C7zhr7j4Qy45FJSVAKp+ukFF/pGhMglvqaCwsaXme2Z7+zKYytjauOfT60OJ?=
 =?us-ascii?Q?qX992QlcTmJFdNFsh5Stkbo2K6dvazukGLZ8usH9SwoA9bPa5vv5RlLhqpyf?=
 =?us-ascii?Q?6iVzLMF8Sy1wvsmU+JuxgAIANSzRqKr+NOr1YBjBOhEi1XPNX0R1EK5sHl2O?=
 =?us-ascii?Q?OHOXvdgP4buRqRVZgUlatSN4L2fFSSBzY28pXfLxUyq+ZY0XrfFgk5Eq0WL5?=
 =?us-ascii?Q?Ivyw4X14zI2xBoBaBn0VWuQoI5LYl99QoS5Pjco7sA171hH9C9aR7SJbktTE?=
 =?us-ascii?Q?vfwigocv9WsZvGapG0wqx2vhOmMVyY58cgBcabwinR1B0D5EecrP20wim/2q?=
 =?us-ascii?Q?rHkazNixos/A/vZyh09GJxAyz6vjAeiDLtVUFNr1/jXLE+RUfI/muGoqNrg3?=
 =?us-ascii?Q?ofKLEFEUkJ4YQ2CDXHfrhe70b+LXTH21XP7h6n8/KWvYOIhqYsT8x5BeIHcN?=
 =?us-ascii?Q?od+sVHGqIeukVTz9X9vhYdDuUPf7AsmLKZWUoLGkfxE2iIuOfOO+ADQNp/nq?=
 =?us-ascii?Q?OSQMNyMVHYuvH0rL1NvrSZdobjtGu1wSqZdwHoSTguY3LX+LSCLqVu9cMsiD?=
 =?us-ascii?Q?79BNR2NYbGyHfpHxCNWTFRC0yBxgGJwiVENK5vClueB+IAJVOxEOyLGjwjrj?=
 =?us-ascii?Q?kZ9xTl1iJqjj8tX59qbjy3QGgFgINHzFb2oaubpBwV3JV5KMk5w71NgUVwjF?=
 =?us-ascii?Q?Lo4Enw+3Pu6JMl2NCiy01osd0WKxftSBKxjG6tQoyCOjhg2nZPv3PDhdNTmw?=
 =?us-ascii?Q?WhgGEP2V5xWtazHhUvebXsYL3/xwFfiGN43wA9afODR8qULf26ebBiumq5VV?=
 =?us-ascii?Q?bdF2gYZ8C2KZCbVwzXZDDkqhuwvi9nz1RYq2nR317HjToA86apT6suLzP+l5?=
 =?us-ascii?Q?OYuez15dfPAJsNZ9s097yI19vWyw3bURToGPxUd1p+BunmpZStsE3XNod7vu?=
 =?us-ascii?Q?JFKv5Zmejp8d9/p9+cDJJu+dkz+/Neqg+RxBtsIHXIVe6PHGbwT8vjKGNorj?=
 =?us-ascii?Q?UFC55rXWDBjbu88DPrbwLS0WsEEs6Qbkv/gPGlmjmCPvdbYRpxWKP5HqHEhA?=
 =?us-ascii?Q?4zPYHyahX3N8UZ90W5Xx44fyT3TEdJUVP6iMLuf6LPZJ/LqBRPdl+9tXeRBs?=
 =?us-ascii?Q?XZ14ySD9VcWSak6yq/lWuaWTx3jhJeq51ytkuTPHBzhLKMnRVqfBdU41sFzC?=
 =?us-ascii?Q?XruqVpbQhgyG2NbVxepQdgMZCqqB9U5UNC8I7r57mRZ7jHOJownW3x86Ox2w?=
 =?us-ascii?Q?1wsfzA7S4LkDTjHGW7ehsz/GSZMsg0/4uRmALVM8NCmLifSE+lp0IpohcT0P?=
 =?us-ascii?Q?6JWEATExR7CqsEB+TN58SVXa?=
Content-Type: text/plain; charset="UTF-8"
Content-ID: <0E6B6729E4CC4C48B8BE0511A9813B06@INDP287.PROD.OUTLOOK.COM>
MIME-Version: 1.0
X-OriginatorOrg: sct-15-20-7719-20-msonline-outlook-24072.templateTenant
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MA0P287MB0217.INDP287.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: a11fb56b-9440-4ec7-74c7-08dc9db3a297
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jul 2024 12:03:23.1677
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PN0P287MB1624
X-Original-Sender: gargaditya08@live.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@live.com header.s=selector1 header.b=fwDHqypy;       arc=pass
 (i=1);       spf=pass (google.com: domain of gargaditya08@live.com designates
 2a01:111:f403:281c::81d as permitted sender) smtp.mailfrom=gargaditya08@live.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=live.com
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

From: Kerem Karabay <kekrby@gmail.com>

Currently there is no standardized method for USB drivers to handle
shutdown events. This patch simplifies running code on shutdown for USB
devices by adding a shutdown callback to usb_driver.

Signed-off-by: Kerem Karabay <kekrby@gmail.com>
Signed-off-by: Aditya Garg <gargaditya08@live.com>
---
 drivers/usb/core/driver.c | 14 ++++++++++++++
 include/linux/usb.h       |  3 +++
 2 files changed, 17 insertions(+)

diff --git a/drivers/usb/core/driver.c b/drivers/usb/core/driver.c
index e02ba15f6..b35734d03 100644
--- a/drivers/usb/core/driver.c
+++ b/drivers/usb/core/driver.c
@@ -517,6 +517,19 @@ static int usb_unbind_interface(struct device *dev)
 	return 0;
 }
 
+static void usb_shutdown_interface(struct device *dev)
+{
+	struct usb_interface *intf = to_usb_interface(dev);
+	struct usb_driver *driver;
+
+	if (!dev->driver)
+		return;
+
+	driver = to_usb_driver(dev->driver);
+	if (driver->shutdown)
+		driver->shutdown(intf);
+}
+
 /**
  * usb_driver_claim_interface - bind a driver to an interface
  * @driver: the driver to be bound
@@ -1059,6 +1072,7 @@ int usb_register_driver(struct usb_driver *new_driver, struct module *owner,
 	new_driver->driver.bus = &usb_bus_type;
 	new_driver->driver.probe = usb_probe_interface;
 	new_driver->driver.remove = usb_unbind_interface;
+	new_driver->driver.shutdown = usb_shutdown_interface;
 	new_driver->driver.owner = owner;
 	new_driver->driver.mod_name = mod_name;
 	new_driver->driver.dev_groups = new_driver->dev_groups;
diff --git a/include/linux/usb.h b/include/linux/usb.h
index 1913a1383..832997a9d 100644
--- a/include/linux/usb.h
+++ b/include/linux/usb.h
@@ -1171,6 +1171,7 @@ extern ssize_t usb_show_dynids(struct usb_dynids *dynids, char *buf);
  *	post_reset method is called.
  * @post_reset: Called by usb_reset_device() after the device
  *	has been reset
+ * @shutdown: Called at shut-down time to quiesce the device.
  * @id_table: USB drivers use ID table to support hotplugging.
  *	Export this with MODULE_DEVICE_TABLE(usb,...).  This must be set
  *	or your driver's probe function will never get called.
@@ -1222,6 +1223,8 @@ struct usb_driver {
 	int (*pre_reset)(struct usb_interface *intf);
 	int (*post_reset)(struct usb_interface *intf);
 
+	void (*shutdown)(struct usb_interface *intf);
+
 	const struct usb_device_id *id_table;
 	const struct attribute_group **dev_groups;
 
-- 
2.43.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/7AAC1BF4-8B60-448D-A3C1-B7E80330BE42%40live.com.
