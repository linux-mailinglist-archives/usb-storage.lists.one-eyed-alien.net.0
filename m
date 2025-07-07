Return-Path: <usb-storage+bncBDTPNYNWQEIBBDVSV3BQMGQEYF4AHPA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 092CAAFB055
	for <lists+usb-storage@lfdr.de>; Mon,  7 Jul 2025 11:53:20 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id d9443c01a7336-236725af87fsf50108345ad.3
        for <lists+usb-storage@lfdr.de>; Mon, 07 Jul 2025 02:53:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1751881998; cv=pass;
        d=google.com; s=arc-20240605;
        b=YV1KpjV6lTECW2ITjBMF2wzMYdE11DuHGdYX+q8+JhW4aI+0YEoWcSDpyndEb2vjf0
         Eq07Ddg5hBy6sgz0iZz1AaOSfOHuah0Xeu+sCILCwU5OhaE22TGPc+7tbNr95ofcrDiU
         2tUp99tiZFxhQJ2NNVSNk30ZqYik9usINiZfBFlZetx7sV3Y3a41z3ALKjvoHbQD/gbt
         i/A5hzs1+O2SM97Fi1JxzXIBF6qU+c6hl3qnyX+s6gh3sAuzRytAEh2uOPrwFe8ITSJz
         Cur8nSRVfmS+YhV+DcQ/gKo47qHQgKHAXuDrrw0TZuLDx6vO1Z8ejU4xWrTRenV39tsa
         ry9Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:from:references:cc:to:subject:user-agent:mime-version
         :date:message-id:sender:dkim-signature;
        bh=Zib3Cqd1Da75qeoOR8Tm92bk1Fdel57TCrN6KYF1ofQ=;
        fh=nCHDxJv6SOHzGvXUBQfGdRyVUtdHVFHmzVo8lKX3MkM=;
        b=JiEKYeGzL6wNaU44YfHuGt120XjKo3rP7nyFARDok4yBMFZ/HHVaZ1CzeGZwjFf/EO
         0HZ9PHf8h/13kMb3nO4fbAl5p9tmvRuOD4c9rcuccO5wj3qxooBe+VFFKK3Bn1gnKqC4
         IlFyOrz3tCNFH7PdtDoHFomwQVHmV3stBG0hFCZMnlJBL77XX8pyN0ickMjHn1kqWdoH
         0UjmH3RGDOX4b5HTiL+vOdcbSx6+gjxgZTpNUOhjLcbac0PZac4Wx+zn4df1ZAENYYmI
         dSHp7IKxMD/3SFCo+U0fXwtdiIh2FhLwc4MHLohS9NxRVdumAN+LAwm19jzNkxbuRSTP
         7aHw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1751881998; x=1752486798; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:in-reply-to:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Zib3Cqd1Da75qeoOR8Tm92bk1Fdel57TCrN6KYF1ofQ=;
        b=PfaJgVc1aTdJAXYxNVU628HxSEShhfj0jA8154DKpYiBTVcl5tGNUUXQzRV8rF0tUV
         de+Ie4gs+uLYtNdKizVVBEkqlQfUSkxgJCezkLNjPnXS5povJwSEt/3AWsDU2DpPJgiY
         3ld9jgQoChJjzSHrJQbLWdoSAKZpR/Ki7GHgg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751881998; x=1752486798;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zib3Cqd1Da75qeoOR8Tm92bk1Fdel57TCrN6KYF1ofQ=;
        b=FUcnV+oyPaiBNykyhKrQgqgjru/jHgfq6+JIEuuxgPZP3jt7+aWtXKS4x5V/TAqk7z
         lxGY66NNOj66iexfLnTqoHwZ8zAp3QtBMeivubrM/fi38jiGdu/HfQbo98RHpXUDDhZH
         AeaTlkbgo2w8akuzVk8tc5LKF9z97Bqoi7465OJMlnMD8lYLXEZSyP1F7mnWazyvWQCz
         7nlacC3I0hIteEFc6fthVC0hjjevvQlbphGT2meTz20vIx8Jncs/H4FmCif/v9Ew+8DO
         hXEqGke98VyMWv9vp/NMWMEynW3oBcC7ta9TFiHkq1/wGQ8H4PRobxePRYh7yZngD0lB
         oeDw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWzhgan/7qXrN8E333Em6t9Jku+ky11w+NKc3z8OBxIWU+v2SP/fZEDsfoeMFQBP4xuc/19uA==@lfdr.de
X-Gm-Message-State: AOJu0Yz6+Ss1iC4uxAUeNe4pcQb5X2Tkg3BLELCE6HRKQPuDJhQg2k6i
	pBIW/uMAx678GinaChbsZYwpJwtQvwgAcZ38Qc3DN4WbjGheg/FbZ9XvU3GaoFK0Daw=
X-Google-Smtp-Source: AGHT+IGbbFC7FMWzBdzR1YcucgsPDoZBtf6eaHoWEkFez2SeAaITptSmOs93s9fDalRiR9Qy3kkifw==
X-Received: by 2002:a17:902:e5cd:b0:234:986c:66d4 with SMTP id d9443c01a7336-23c90fc7d9cmr100985785ad.26.1751881998485;
        Mon, 07 Jul 2025 02:53:18 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZcGzRks777ocjYyhxsOVyDhqmnhq3e5XLbAbGikdg7xDg==
Received: by 2002:a17:90b:50c3:b0:311:cc50:50a7 with SMTP id
 98e67ed59e1d1-31ab0371343ls2900149a91.2.-pod-prod-03-us; Mon, 07 Jul 2025
 02:53:17 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCUU06zVtyV5kBmQNKF7APO3Cyhn8jtEJ417tLfajRjx24ABCu0aovq9pu9RMhdU6v3MPXFG0q7Xsn8G3Q==@lists.one-eyed-alien.net
X-Received: by 2002:a17:90b:2643:b0:313:f6fa:5bb3 with SMTP id 98e67ed59e1d1-31aba8d2c4emr10615223a91.26.1751881997139;
        Mon, 07 Jul 2025 02:53:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1751881997; cv=none;
        d=google.com; s=arc-20240605;
        b=CptChxxOSSYF5NFVgBGG0XQQBQ6gZ/gkquTF9eQQ0rOG14/MDmHlUtZk6H9WttSxxh
         dMVguIHWUDkKvcADlYrlU+5UShJobwdL2dbVyvIIiqol1bCFz8+wFmtgQdHg47MakA0Z
         m5KU8ofL599t5Rm55gNriYqHjva7Le6FIAY99KCX0ZY6exuDr/ibm1pyRDHUIidC012S
         bQ/w3audeG4sXtJ0/ReemX775auDCxIw9sdPKwhUaHFjpAhV58ZizEWoGSr8V1Te6wgY
         7iXGEo6onP0XhS8fb/640rXM5q/iRgwUi1/n5nLbc4XtKEJlAisjVYwKrhE3Q5F0GM6H
         nM3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id;
        bh=dHoiUrFnx8+EIY5Ig9XdcIKzzAFI4S9wu6fZV9tebqA=;
        fh=aQQzdJRFsORi1PMls268opEIcpN9488iDRYb/9EBMrk=;
        b=LnBMS3wmufrxRJmgs6+YyynvSZJ8gl2kjYULELqPdlKWnA+DvHNKxP/VOLCJBK+qtI
         jtY7EkaSgKnrEZphQNcrG3N939FzycMPlPvO7CMBOyTbLMsVzHNEC7/OcvhYOAS8F9tp
         i8gTMfqwOYWEzFRSXrdfOKpevWdCmIgQ/Y3RgZWPZq9Feldx3WvmuG6yL0rVyxxBxV3H
         w4gVUEUFHINO3KBe9D5a/LYw2S5bQ5zToDxFnlA1gBzxEOtu70lsMuhZwRCALtL4wxXR
         XyYROiffUevvyUD/oHSv2IYt7RE+oXNGpXcY4xhBG2umuw7woucaSxY2OluWVEasgcdi
         arQA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) smtp.mailfrom=dengjie03@kylinos.cn
Received: from mailgw.kylinos.cn (mailgw.kylinos.cn. [124.126.103.232])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-31a9cd020c6si14174395a91.77.2025.07.07.02.53.15
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 02:53:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted sender) client-ip=124.126.103.232;
X-UUID: 2e93fc545b1811f0b29709d653e92f7d-20250707
X-CID-CACHE: Type:Local,Time:202507071739+08,HitQuantity:1
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.45,REQID:2ab2d498-7f91-40bb-bdd8-b619344a3bb3,IP:0,U
	RL:0,TC:10,Content:0,EDM:0,RT:0,SF:0,FILE:0,BULK:0,RULE:Release_Ham,ACTION
	:release,TS:10
X-CID-META: VersionHash:6493067,CLOUDID:0e0ec62399c8d822338bf1a4d728e3dd,BulkI
	D:nil,BulkQuantity:0,Recheck:0,SF:80|81|82|83|102,TC:4,Content:0|52,EDM:-3
	,IP:nil,URL:0,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil,COL:0,OSI:0,OSA:0,AV
	:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 1,FCT|NGT
X-CID-BAS: 1,FCT|NGT,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR
X-UUID: 2e93fc545b1811f0b29709d653e92f7d-20250707
X-User: dengjie03@kylinos.cn
Received: from [10.42.12.86] [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <dengjie03@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_128_GCM_SHA256 128/128)
	with ESMTP id 428882174; Mon, 07 Jul 2025 17:53:06 +0800
Message-ID: <2c4af4f8-5763-4ebf-8070-c7eabf43fe5e@kylinos.cn>
Date: Mon, 7 Jul 2025 17:52:31 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: [usb-storage] Re: [PATCH v2] usb: storage: Ignore UAS driver for
 SanDisk Extreme Pro 55AF storage device
To: Greg KH <gregkh@linuxfoundation.org>
Cc: stern@rowland.harvard.edu, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
References: <2025070422-punctured-opal-f51e@gregkh>
 <20250707062507.39531-1-dengjie03@kylinos.cn>
 <2025070725-circle-recite-bc04@gregkh>
From: Jie Deng <dengjie03@kylinos.cn>
In-Reply-To: <2025070725-circle-recite-bc04@gregkh>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: dengjie03@kylinos.cn
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of dengjie03@kylinos.cn designates 124.126.103.232 as permitted
 sender) smtp.mailfrom=dengjie03@kylinos.cn
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


=E5=9C=A8 2025/7/7 16:47, Greg KH =E5=86=99=E9=81=93:
>   =E3=80=80> So ignore UAS driver for this device.
> >=20
> > Signed-off-by: Jie Deng <dengjie03@kylinos.cn>
> > ---
> > v2:
> > 	* According to the file modification rules (sort by VendorID=20
> > 	  first, then by ProductID.) Add the newly added "UNUSUAL_DEV"=20
> > 	  in the correct position.
> > v1:
> > 	* The newly added "UNUSUAL_DEV" was directly added to the end=20
> > 	  without modifying the format according to the file.
> >=20
> > ---
> >  drivers/usb/storage/unusual_uas.h | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >=20
> > diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/un=
usual_uas.h
> > index 1477e31d7763..6b1a08e2e724 100644
> > --- a/drivers/usb/storage/unusual_uas.h
> > +++ b/drivers/usb/storage/unusual_uas.h
> > @@ -52,6 +52,13 @@ UNUSUAL_DEV(0x059f, 0x1061, 0x0000, 0x9999,
> >  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> >  		US_FL_NO_REPORT_OPCODES | US_FL_NO_SAME),
> > =20
> > +/* Reported-by: Jie Deng <dengjie03@kylinos.cn> */
> > +UNUSUAL_DEV(0x0781, 0x55af, 0x0000, 0x9999,
> > +		"SanDisk",
> > +		"Extreme Pro 55AF",
> > +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> > +		US_FL_IGNORE_UAS),
> > +
> >  /* Reported-by: Zhihong Zhou <zhouzhihong@greatwall.com.cn> */
> >  UNUSUAL_DEV(0x0781, 0x55e8, 0x0000, 0x9999,
> >  		"SanDisk",
> > --=20
> > 2.25.1
>
> Why is there two "v2" patches sent here?  Shouldn't this be "v3"?
>
> confused,
>
> greg k-h =E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80 =E3=80=80 =E3=
=80=80 =E3=80=80 =E3=80=80 =E3=80=80=E3=80=80
>
The first sent V2 patch was missing the description of the
differences between V1 and V2 patches. The V2 patch sent for
the second time only adds a description of the differences
from the V1 patch compared to the V2 patch sent for the first time.
There is no modification to the code. So it is rashly believed
that it does not need to be defined as a V3 patch.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/2c4af4f8-5763-4ebf-8070-c7eabf43fe5e%40kylinos.=
cn.
