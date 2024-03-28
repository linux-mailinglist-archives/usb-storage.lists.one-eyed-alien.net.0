Return-Path: <usb-storage+bncBD4JJBHQWAERBWF4SOYAMGQE2RV5SYA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 0415688F5AF
	for <lists+usb-storage@lfdr.de>; Thu, 28 Mar 2024 04:04:59 +0100 (CET)
Received: by mail-pg1-x547.google.com with SMTP id 41be03b00d2f7-5cec8bc5c66sf311041a12.1
        for <lists+usb-storage@lfdr.de>; Wed, 27 Mar 2024 20:04:58 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1711595097; cv=pass;
        d=google.com; s=arc-20160816;
        b=BUuz+vbtDxw6HfPwD3kaF2scSuK7J3q51zkLoP6flmrS43+hsR2DazXXWSMccZhhIo
         l0/ld90zF4DLa5QkJ0YeIF1AgjFq2NjQez3M9XVHxCjydAiZ/W8t1czmJ+lXXKN6hzYY
         Y4VYssUo6pt13QM3ojaapppi4w82/8smLTzAe0x2gl00g5eLx5oRiH2Hfvov+ZOJYd9U
         1wN3rwL4/g7Ti/mwZwhr+fQIv1D+bTpFolTKRSzVHh7m2ppbJDAhDfBPyxxi/ESvqDpN
         S2luwY87lr4BqMjL8q3ersExrbCs2+yk2K7dUuhDzN+f0WPYPWRByis+DzF6jqCEvyU2
         q/+w==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:dkim-signature;
        bh=aWCf28q5MRicse9H27u4fk4LDBynQ4eVlsjGI/K2nJ0=;
        fh=OC0z9suYg+wFaVH96ZCZoxoStfXPvcyt8IQ8Fiv1Klw=;
        b=fVt39LK+eV5HJo2gFJIc7xK3MANx58cGEbDKnoqqTtNbyUT1JXmnMgYxny/1zU9RPs
         sNmvEKXJfJOiZNaGqhr90/gDOkWDcugVSScAdH8t3sA6cOxfdvWrnEUCRNmPBRLwE+oH
         xJCqpF4z7sEgjfU7eVmbMDmCuqGw++s4NRF1dXF95tAq0PM5eWrRiz33TwuNT/ilYWKE
         oYALL91UZ5ObDrhHNh2g1Qj4E0Y8h5f6dqhB8V4dcJHhUZC6bICroTyv+VLdCRqWdV8M
         4xMVyNqvYEwBF2f5bfZUuGY4G0Qg2mnZZ+8PgyKgzu1b+rmymhDnCiLHVarWt6mR4y3J
         eHNQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=3; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=jVoMX0Pl;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::600 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711595097; x=1712199897; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aWCf28q5MRicse9H27u4fk4LDBynQ4eVlsjGI/K2nJ0=;
        b=Q7SvurbcOjdwgScPohJCYhyIFmDILw8lRfynstxc6ZO8mWQJVKnKYUW4it7uk7/X6i
         j6YZyQoTJsPAyS6SZK+Lku3kjmpF56Q7RY17JypNsiiWsIuI5u751Zxoie1RedbA3ta7
         ki52gW6Or4KKaH1X8gon1OGHtRZjJfbow+nBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711595097; x=1712199897;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender:mime-version
         :content-language:accept-language:in-reply-to:references:message-id
         :date:thread-index:thread-topic:subject:cc:to:from:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aWCf28q5MRicse9H27u4fk4LDBynQ4eVlsjGI/K2nJ0=;
        b=mTpFYvBYP7hW+HlKbpCM2adWJKTG/4VJUfOM0Sy8XQ0BZeyHeJet1h4VKyFHbTMKVu
         0tJZLad7TIxKP389C0zIb6sUw0LWBQC3rvKXerF5p5uarpOGhAK62FMsWnZy9JqUYR/B
         RAApcfZaMhZhCDlpIqY7IhFHEDT/drCa6tHeL/aXt8XVndmg3qg+XiYwjCp6DKBXYd1c
         KiVOjbTrYQ6WTai+T9dpJD93ZPkXNhgAnifzNM3UCvMDkPRLDGPZKJU49PcxFhGD1ZfD
         9nsy9MudOrgy3lgxk5cOeilBbxk06mSUJvmpf7JYpvYAGp/Nx10PVNefQWVjGwg5lCVP
         fP9Q==
X-Forwarded-Encrypted: i=3; AJvYcCVlLrElSxA3HVuuTOJwNute//saTUtHQOLsG5C4mD30ooapc1icXITc2W5yEvFUgRovoHdIk1ZZXo5FUGiJiShc2/NvoMXhwLxX
X-Gm-Message-State: AOJu0YzQk1+8SNGoxOqOtXYDbeFJWqiaG1DSTnIppTAHquLjvHsm9/u/
	bBy9SvxPv61j2CKpA+O/Q838DZt8rOQbVyM7wio/AsS+/3VHiobUFp7j1cR5VyU=
X-Google-Smtp-Source: AGHT+IFEMd27dGtHIgYlHN+3/QlqLZ7VAGQUzB656AydiXmFA2rDySy/lbdKEC4a3DazGae8uT8P/g==
X-Received: by 2002:a05:6a20:da8c:b0:1a3:5fa1:3d4 with SMTP id iy12-20020a056a20da8c00b001a35fa103d4mr1809490pzb.0.1711595097223;
        Wed, 27 Mar 2024 20:04:57 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:48cd:b0:2a0:73c0:992 with SMTP id
 li13-20020a17090b48cd00b002a073c00992ls276627pjb.0.-pod-prod-01-us; Wed, 27
 Mar 2024 20:04:56 -0700 (PDT)
X-Forwarded-Encrypted: i=3; AJvYcCUYjA/qgkzKtMYRMgDW4VYP1B4N5IG1bAfCh5fv8BOriw/OP/tomrz8OyAYfmjIAFkMygnRMxmyIBZRUzq5X2Jnj/uOcj4flpKEpS94BfRvNk95GmI=
X-Received: by 2002:a17:90a:6b82:b0:29b:961a:29c3 with SMTP id w2-20020a17090a6b8200b0029b961a29c3mr1232795pjj.49.1711595096005;
        Wed, 27 Mar 2024 20:04:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711595095; cv=pass;
        d=google.com; s=arc-20160816;
        b=zvPht8FFc+DS9+g6LBA1UGU3ZuR/5xSORsTCD8GX5n5vVnnnlvuW9cCh1bvdrVNlfw
         uVEcxQnWxx5KVRBfoE+UYFttOd+tN7AZMYxHhuEXulzW7YM6dojWisQ3/fNLpRY0OtpU
         FpvOQWiuu0i/lCecLze6qBfop27qKjvLnVZmsR01rPluZRYbkNgQQP5vvIWKkeEoI5kA
         bPjrjmfTGK9IA5SJ780xvagH7aeU8D9bW1Jrqo200/eGQgTRLdx9EhaDCERGqG9ttUeR
         RaD9hRFlOfOEQkPi/O0IEKIvzhbiZlensmndfDo+dYoplJNcvuwbpI6kTjfsouvfp6PN
         3FxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:dkim-signature;
        bh=BKW3qS+TwUYz1PPd03eDk9VJDaWutyu2MdLzfZhJmN8=;
        fh=BWKLF4/1Ary8SW4UTJ0WQbHavI7AJH/2DQwzNzPsXHc=;
        b=rWCHeddkPPyMoXh3UBb7dFO6xAI2sUDvq4I+2/iCr0ufcoRd/LV+dVroHcdkcKmkmt
         3CVUsiTKpfJcwIT1cmBAxKFn9f+vdNWL33vweKlWeBPWmHstd3FAODEnzFDR6LAoDNkY
         r6liqK0FQcM2fhEe2sTbcLHD2P3U0cZ2mDkDAEbX0RUHmz5SAMyTv+28+LjkZkLtdKNB
         j5ZZ7+9gb63R0IG3O2HvfWYdRElIcln9bC7jyRcq90qp7ViTI+QW09tJzU1WVmxMKpla
         y+TOKuuwB3vouLlweyckoMY1jaFGo3vmV2QNQhdddhyK/fibimAwD2GuYFEWmql9VZqI
         jQGg==;
        dara=google.com
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@alpsalpine.com header.s=selector1 header.b=jVoMX0Pl;
       arc=pass (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com dmarc=pass fromdomain=alpsalpine.com);
       spf=pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::600 as permitted sender) smtp.mailfrom=norihiko.hama@alpsalpine.com;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=alpsalpine.com
Received: from JPN01-TYC-obe.outbound.protection.outlook.com (mail-tycjpn01on20600.outbound.protection.outlook.com. [2a01:111:f403:2019::600])
        by mx.google.com with ESMTPS id j6-20020a17090ac48600b0029bf0ec19fcsi591808pjt.132.2024.03.27.20.04.55
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2024 20:04:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::600 as permitted sender) client-ip=2a01:111:f403:2019::600;
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E2EjIkSOk0Q86EhaEzMMtDky0sLZEUlB4SQWwBwRFWPLIrX7tzgTEqfGUbCPed0AnXIag8PyTSGu2W31/rCn7ySa8ToWDCLdWTjn2k5l++BVb5yv94fDG81OC4Msq5vOUtvyvi9+LQHUKwsbV+EMHnrwLDJJlfNBMN5aHkB6mgoxzX0fbWFJF+kMxGv4jV0JireBkBYP++4a5H74mGCHOjntBitRsbP3rwtVw7Ci9WZXqE2Q9Bbn3ZPQsdYs8Glwnp+YqUhHv8Y+wQbgr3+Aw/EIBvo0KgxuEmnm5hSdie9lO6fCBix4a7xxkJY2ag8aSdRSr5/KQgO2v4r3ZhZu0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BKW3qS+TwUYz1PPd03eDk9VJDaWutyu2MdLzfZhJmN8=;
 b=K08maiNtefEtlV0LE4OIFiCeS7FmaR9DicDkGNJNs5bc3L/F7aA2VOxlPeyDdThMK0QnKqgUctuMDhD5OHRkcuRDtZrvM0TuTbP1xRZJNWCoxc85WKAguAUG4TKnmxdRwowegB2m9PmEyR2szwnyqJaOI9L52E5ar4NaSoNvGvzVMtqh+Lbcs/oAV40GRwNhfDRa9AMko3FZV3rO3sXdi20VQdjAyApBFcVeppj86rxLgm4yz/X5a+rRQe6yvdk0heDV/X2raUcZN56z0dqtVlR3CgLUfLvIBGD/deImi1T8uqUbFCshHKhmiYIrGttRksXKbt66YdtOKDoj3wsTvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=alpsalpine.com; dmarc=pass action=none
 header.from=alpsalpine.com; dkim=pass header.d=alpsalpine.com; arc=none
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 (2603:1096:400:2ae::14) by OSYPR01MB5432.jpnprd01.prod.outlook.com
 (2603:1096:604:86::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.33; Thu, 28 Mar
 2024 03:04:47 +0000
Received: from TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b]) by TYVPR01MB10781.jpnprd01.prod.outlook.com
 ([fe80::b541:f53c:6306:6e2b%4]) with mapi id 15.20.7409.031; Thu, 28 Mar 2024
 03:04:47 +0000
From: "'Norihiko Hama' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Alan Stern <stern@rowland.harvard.edu>
CC: Greg KH <gregkh@linuxfoundation.org>, "linux-usb@vger.kernel.org"
	<linux-usb@vger.kernel.org>, "usb-storage@lists.one-eyed-alien.net"
	<usb-storage@lists.one-eyed-alien.net>, "linux-kernel@vger.kernel.org"
	<linux-kernel@vger.kernel.org>
Subject: [usb-storage] RE: [PATCH] usb-storage: Optimize scan delay more precisely
Thread-Topic: [PATCH] usb-storage: Optimize scan delay more precisely
Thread-Index: AQHagAnskZ+PrXZ1a0CyN6BGkMIiXrFLFjOAgAAcfLCAAG5DgIAA1Sdw
Date: Thu, 28 Mar 2024 03:04:47 +0000
Message-ID: <TYVPR01MB10781AA8B37E147E318597B46903B2@TYVPR01MB10781.jpnprd01.prod.outlook.com>
References: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
 <2024032757-surcharge-grime-d3dd@gregkh>
 <TYVPR01MB107814D7A583CB986884AD4B290342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
 <a446cdf4-3a9b-43d8-b22b-78c20cce2b4f@rowland.harvard.edu>
In-Reply-To: <a446cdf4-3a9b-43d8-b22b-78c20cce2b4f@rowland.harvard.edu>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: TYVPR01MB10781:EE_|OSYPR01MB5432:EE_
x-ms-office365-filtering-correlation-id: 58dddad0-7a2b-46b6-c61a-08dc4ed3d39f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dlQRM3Db9y9Ms8wMH+rFvSCMXsAiwXT8FwwjrnFjb/1QNezRc8ZlX1h6rh4i2cMtGFjyFdp+gyKw8ECL3mvjsLf3wpw8zCc2XQGRv5WecRnhyCqX281i6jZVNCQXwX/sWQfJ7Um3nMpZp4qHJBc23Yo7sqJ5QYhEuxG6RS3Ew9IrzxyI4+39EofJsODEzk4xkYaXGEbA1l2V5uwsppW7xc6tLDv7zHAyZZjm1psiqIS3bthcFxyJZ2WK9GOYStS7iIrwQ2f93uytR0VPd8CSjP5L6Vy461nkt3M4zx8XgSB4Y4BE+IeQyXUpRS8NzjL0okO6nWTNwul0Jl0vQFF3rr3QMb3NYCniLWVBljQSuddoc0fRmTOhAhm4XVCMfImNzT2nYLtBAacOmY8R4YPNjC1vsZyKoN0+0WQ6pDVDb+gXEpffMwkmdMWTBE7yyw9h9zrnvnM/dTgYeWTt17rHo5AuKUxeOBvQWCI8TXlleU65x6EEH9I3BR/Z4fXaHrDehWpYOpUrdYlrcEtmTebMLl8GqwDYTUI6PE5uX7zHz+AsCgXviWXsHkmf5y6IjaxCKppZ4UC7mmis1xkteQd9Awl6d6/jw/nTP0JUVVtd3P2cvwAUJrxKQ+/ApIQUfAMhiFjH88/tnkSipK8got8+YhSzn9SbK2z3kdcCsWKny3hdAGKJP8PXlEdYC2HRj5z9FPtIwWnJHcjxG5nLtG2aqDOGjwzMa1W9D40/FV2E0Kg=
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:ja;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:TYVPR01MB10781.jpnprd01.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(1800799015)(366007)(38070700009);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-7?B?b1BNL1Q4QzlnSGFWZVA5c042V1Q3VmZkU3NzckpFZmFlN0cyMFBkS3NJdEU=?=
 =?utf-7?B?Ky1vNVdHaG1hMHhJNXRRaVNNNSstS29JUElsbGVKd1ZkTHZOZVFvUlpRMFFm?=
 =?utf-7?B?bXFlWFdWNHJ3MVpXdEtBeTNjaW1QUk9QeHd6TktlVUtRcnVSaDF1bUJ2RHdw?=
 =?utf-7?B?QkdNM3EwT0lac0Mxa0pGQ1Fpd1VlZk11N3p2cWR2SURkNW1tdDg5bW1qZEdN?=
 =?utf-7?B?cFJCUlJFRVhnV3VmKy1Fc3BYTEZVb0RWdElpWjUwQ1BBeFZpTGU2MlRNaFVp?=
 =?utf-7?B?QVQwbW9IQnNTTjg0NmN6NWtOQXBTeHgzUVVnNXBhSSstS3dRallDbGxSZ1hl?=
 =?utf-7?B?V08vYzVDTE9VU2RWb3hVSDV5NGRYNktIZFhncXBIekpGR0pKZGsvczVtTUR4?=
 =?utf-7?B?MlR0aEpGZUZOL1R3azNsbzdLTGUrLUc5dTExbm5RNlBFOVkwcWtEUXAyR3E2?=
 =?utf-7?B?RUVrOWdvRkNNT0Y5QmtNclFENC9NTEVrQlJTNU5xb1hqRnhWeGZrcG1xbWhT?=
 =?utf-7?B?YnoyakF5UmJyL29YeHdyOXRIdTJlRVQwVFNnUm4yNistR1prYVcwcHpaQUJX?=
 =?utf-7?B?eVZHaWtrazFxMmlKNGFsa042TTNrNjM2a1lJVlVSSjRNYW12bktvMWlMTTFI?=
 =?utf-7?B?L3dBb0krLUkzYzFlcDhTRnZFalExdmVGUVdHYndGZ0VEeXNCN1VIUWNHcHBV?=
 =?utf-7?B?T3lJQTdvcDdEaUFORXJ0Q3FyaDFvQUFiM0NOanUxV2dqTG9ETWNlZGQ4WjRV?=
 =?utf-7?B?Z1lGdEJlQ3NFN1EwQlhENk9wMEN1bjBPbU5ycFJSa2NDamZHeEJQT04zbGtk?=
 =?utf-7?B?aFdKaHBhQzd5VmhXaTZScWtGVHBibnd0WjFMQUJ0U2E3NldMTjA2WFJqN2xX?=
 =?utf-7?B?dnRsTC9hVUdKUlBycEVnKy1jd1BWMnQybmlyOWRhODBvQXVSR2xOZFBCS20=?=
 =?utf-7?B?Ky0xemx1RnlrNistcmdJZXdOZCstSGJlZXpyR3VPcDJjVW93aFdRWmYxQnFy?=
 =?utf-7?B?OEs5c2dEeU1HazRjbkcyV3dZcm5pcVNrSXE0cXlZWnNFVTZ4M09UTS9CMGRU?=
 =?utf-7?B?U1J0SDk0b010V1VkTmJCWThPenZCenliOW5YemY5M1BjNE1KNUY3bUt1dk1C?=
 =?utf-7?B?Ky1saFNhQTRSQ0doWUFONzdvRnh0YlJzUTJhNElaNTlqd0tsZjZLR1J3SkNX?=
 =?utf-7?B?M2VMc04vdjROb0tZRzJNbmQ2cE1EV2ZPWjVlKy00dldoaERWNW5jTXNVRVFN?=
 =?utf-7?B?NkcvSGJIRnJiUWtsYnlHWGtxUk81cVE2VzBoNUN6U2ZqdEgvZEUzdVBZZ0Vh?=
 =?utf-7?B?c2pxT3kzKy11VUxYc2hEaGt3ZThNUmRTa1JXZ29xeVVVMGJJKy1RQkpkN0N1?=
 =?utf-7?B?Y21wd252NHY4R1ZncVk3Ky0vQWxMN2pCd2o1U3dhWkhHL0lFbjVFcUcvci9x?=
 =?utf-7?B?NnF3VzNTTmdBYXMyZjRISjVZU2hJM0hLRm5ZclpvTFlsbTNPSE8zeXk0L1pW?=
 =?utf-7?B?RFdiM3pQbHl5ejg0NG0wVkxqY21mNystd2kzTUIvc0lnMjllWWlVR09NMWhI?=
 =?utf-7?B?Z1hRTFJFRmthd3FJbTVOTlVhaXZnaXk5d1lxZ21TbXZsQ1U5bUJOUHlRTnVn?=
 =?utf-7?B?dVovUk9ua2hlbzBKNkN2c2NaNTY4ZVNMT3NsZUlnTmNxNUlOVXIwZVBFRWhp?=
 =?utf-7?B?VTRtZWdGZmlZV1pvSTc4eGJ2SWlYUnk1VGdrei9uSVMzNDdaKy1sRnFmUDZR?=
 =?utf-7?B?NXkyVHN2OWl6cHNwcTNHb1IwbkpWUHRUL0wxZDl4cnE4bXQ2YVlrQ1Z6Ni92?=
 =?utf-7?B?ODBFWCstekdXMm9qUnU5bWZYU2ZpUVp3VzNOTEpQSm5uMHAySmpBakp1Q2k1?=
 =?utf-7?B?LzYyNjZsc1NjU29NZlBMVjdJeThkMjVYTlQ4enBqV2tJUGg5S2xCNCstV1pw?=
 =?utf-7?B?YkJFeTU1OXlER0dhMFU5Q1EzNDBIeDhTaXVFb25LZW5xbXhOZCstNWtSRzU4?=
 =?utf-7?B?TEw4ZkRtVjQwZTk3MFRZUjcrLUJ6MUFIQmFRNXZuak1NZmhDYWJNZHFUS01q?=
 =?utf-7?B?elpOVlhSYmc2amdqNWFaNU0wLzI4aUx2N29lRU54ZDhsV3B1S1ZpSGd6ZTEv?=
 =?utf-7?B?TEFKaXNGZWF0ZWlXVWdmd2NBdEs4cXM1aUlvdUhvU00xd00vU255QlV6bFp2?=
 =?utf-7?B?UXliOQ==?=
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
X-OriginatorOrg: alpsalpine.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TYVPR01MB10781.jpnprd01.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 58dddad0-7a2b-46b6-c61a-08dc4ed3d39f
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Mar 2024 03:04:47.4854
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 57e76998-77bd-4b82-a424-198f46eb2254
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: HUEtNeOX1XkNN/oQuIfCuzugno5d2qBfiBPQ7oqbK9VYV7fvxzgYxRyUEevGiw+eNDEUwMxleOCsgDYU/8fR/A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSYPR01MB5432
X-Original-Sender: Norihiko.Hama@alpsalpine.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@alpsalpine.com header.s=selector1 header.b=jVoMX0Pl;       arc=pass
 (i=1 spf=pass spfdomain=alpsalpine.com dkim=pass dkdomain=alpsalpine.com
 dmarc=pass fromdomain=alpsalpine.com);       spf=pass (google.com: domain of
 norihiko.hama@alpsalpine.com designates 2a01:111:f403:2019::600 as permitted
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

> On Wed, Mar 27, 2024 at 07:39:55AM +0000, Norihiko Hama wrote:
> > > Sorry, but module parameters are from the 1990's, we will not go back to that if at all possible as it's not easy to maintain and will not work properly for multiple devices.
> > >
> > > I can understand wanting something between 1 and 0 seconds, but adding yet-another-option isn't probably the best way, sorry.
> > 1 second does not meet with performance requirement.
> > I have no good idea except module parameter so that we can maintain backward compatibility but be configurable out of module.
> > Do you have any other better solution?
>
> Can you accomplish what you want with a quirk flag?

I think that it's hard to do that because 'quirk' is specified for a device
but it's difficult to identify the devices to make quirk, especially for future introduced devices.

Can we change the design of existing 'delay_use' ?
For example, 'delay_use' is 32-bit value and the value "1000 secs" does not make sense to set it,
So if it's set to '1100', it's treated as "100 / 1000 = 0.1 sec". Is this possible?

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/TYVPR01MB10781AA8B37E147E318597B46903B2%40TYVPR01MB10781.jpnprd01.prod.outlook.com.
