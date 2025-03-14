Return-Path: <usb-storage+bncBD64ZMV5YYBRBVHU2C7AMGQE6ZLLR4I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D925A61375
	for <lists+usb-storage@lfdr.de>; Fri, 14 Mar 2025 15:16:53 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-4767bab171dsf20958451cf.1
        for <lists+usb-storage@lfdr.de>; Fri, 14 Mar 2025 07:16:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741961812; cv=pass;
        d=google.com; s=arc-20240605;
        b=Efbc9aY9N/AWkyOqJAte7BknWmeD77xLHK4lqC4bKFdApe2gugpp7rcGYEg+PrF+KV
         1Od/ydBCwKu13M1FRKOlfEOwq8bNgyNeqtLjfn4an42fsOZoOyHZko+L1u1/QfbBtwJ1
         /SBjfznGXm4mPmoPiBSYvafvwpaxQFizPYZLIzwd7SFcAng6iz6roxuvRrJFgLuFvcRD
         GhKFy2eOeQjE2BqbjUElyAVsIgLLClnicWSV83qJ3Wp50+LJFY/RglV8rNhpugAcy/8n
         cmV0oPVl6WQ86QR+VotR9toRylkNOpwOU+Onivz8fsxnLi2z/hAiGvoJvbH9kUX2LWxa
         zUEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=wAISgIpSWqMgeSvoEXqkKCVLy3SppYj/CXhneL/gg6Q=;
        fh=BBGHn8fmo9dnPFs1gWXhIb2YuPwd9yR20bK8Uiyde+U=;
        b=HelQ+H8sh2Bx9mNrn76GeRjR70pTMD4hXTPIH8R8Ktdvov6vTzfoNFuzpRCN5T9DFU
         LuMW8XQyCaSAuRxD/wb6/dj8DT0NNNq07/omXQLRXj0DdhDEBpLYBkVKC2ZMfeXV44V2
         K9YVBVRlQlY0v3N2ScvhgZjHjciP/rzSnE0Btwui8fxnqc7pKDWSpXzQaVzZqO2R+9FX
         Mh2uK75fALdYIB6nm3HSJxXWXuxw9TwPhVrlPHkTsgLIjlAVZ26Qh5hkegAMkCvk3XlC
         k3MrB6muzO6Dp5MOasVrYlSmHwzv00lIj6Lvz9FxS83hnxQT5AFMr0WvqsaYnpd5UTAe
         JE0Q==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=UgZ564q3;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1741961812; x=1742566612; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=wAISgIpSWqMgeSvoEXqkKCVLy3SppYj/CXhneL/gg6Q=;
        b=ap6P3HbJ2+Lmz3xwFoyh4s4CcqRmvqkVcj0lQ5XJ5Qhytfy2ATJBYZnASrJUrkVwHa
         8cOsDRM0QNsDjorZat2U5SqzgZDOSF4iTdhWDsgABccLDdrpqXNiJrDhOBUt5UyaLxAT
         v34ozGGgYBGrWelbjefefBy/spP0x89t/KZAY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741961812; x=1742566612;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :content-transfer-encoding:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wAISgIpSWqMgeSvoEXqkKCVLy3SppYj/CXhneL/gg6Q=;
        b=vebeC26v7SKl4ndswYLI1qTHb97kcel11c0j6NMs/YR4OHdXEHCfxLgFEKC/QNDTAY
         fnrV+SEsTeE+stA3DCDHRKD199PHqgFlecUNAT82pQc/sQaEAxyRlX76C15fDdNgkJrF
         ht3ouzu2j4SdbtDMQU2WEDVxSmdRp+53QatHhfHlbsTAALuUta0WQN9ABCU5J7STpOwo
         JR2hKKR9XogkntcYPwbryxZNw5wW9dgGcJ4OmJS1aMFWQwtnnKgtXEGSnEpWMx/EfBqE
         GSi10NQA7vFU0LAI6VVJs6B1/GvAyJCrXp1+kWmEYMtePe6Lp1iqgA2bcky8phyAyyni
         1fCw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWb3SFOJn4catwq3hk0Nl1uC+XUkixraMD9ZNOQh9MAcBvv6hnj9XVzwENurEHsL2p9HmR2Tw==@lfdr.de
X-Gm-Message-State: AOJu0Yzo0HtLzIBetKtTlFBSEvKFINtfYFxDNSmkkB1KSIG1VnjNpDJ1
	VbJBm/613c6i88p5wXLugtZ48vNBXNpC92qewPnlfhqbpOZiOMUf24sAh+t0Rh0=
X-Google-Smtp-Source: AGHT+IF6RVNnm5vpyBKzKKeOKlkrjK41qJMj20HmfcoRH9wtnN4pCI0cuBtSVUsXtIRymtAAzBwDOg==
X-Received: by 2002:a05:622a:500b:b0:476:a949:ceb6 with SMTP id d75a77b69052e-476c81de0a3mr38587191cf.44.1741961812165;
        Fri, 14 Mar 2025 07:16:52 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVET7r+PkXVqqCwdHHfDvdZtM3Xk0XwWbLhHVjU5l/7MAQ==
Received: by 2002:ac8:7e96:0:b0:476:8077:3350 with SMTP id d75a77b69052e-476b7db9617ls3544911cf.2.-pod-prod-08-us;
 Fri, 14 Mar 2025 07:16:51 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWn3v8txt+jQY7RG/zzjz9bbuIAcLu+Xj3YZbbNsMUaTuqPBC6RJrYqmMry3lkWe+acgWeRJ6AALviWGw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:1a88:b0:7c5:464b:6718 with SMTP id af79cd13be357-7c57c8f0a86mr461142185a.54.1741961811136;
        Fri, 14 Mar 2025 07:16:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741961811; cv=none;
        d=google.com; s=arc-20240605;
        b=UzoTaiDRSXJxY8ZCGxLgS6sBpslVwC8h8iw9s4hAiNSpy46I5dz7nAFb0ROk+x8jjS
         gnQHbPmUSYUjXULn2XqLygZspmDB4D0ujng9hCe3zmUa8qQGFdDycELVFIJSfOpte3u+
         Zipa1+xL+aaY7nKo5dUh+dexG51/4hAObFFNf6WTVtkbyJLTjFuoiPT10Skru2frfcp+
         ALuSsuxKMgS0IlmOz8YpUF3sNNc8mQgBhH4a9IuSA1rgWztGFtrLfiWMjLshEJlwTanT
         gHVfpEDqveG3nHHBG241nPkiCgLLP6gTP4X8KjKWGYCFpgCjHi6N1rLv9KRCaTC3SPK8
         c+5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Y8W7ZUxgohAw+y/XsscWbOpAfNMeQZF+P7nEeEyn86w=;
        fh=3y8oO7tJyTdrZvjLBnwLEUp7V6qM5LHPmub4Vy5qmXI=;
        b=ECtHPG/expd2wZiUlf6rUWKPFyCqBtzjk4+vO9HESo1QG416dz+TDtNE9Uq/ajuUgz
         eKFq4ZA3dIn1A5W6Bq8CHCqXer7hUcdpa39IcO2a1qwIwK+jOeCPR3QNebP2J5G920wo
         i4HqojYym0Zk/kWB8w/fUEeR7+Jz999STUcrfwSqgzXU8Tf70kYYjq3V8ljSBWEl9Vgn
         qEoOSk3LE54iyh8ok0F7GzSNzasP5/Jq4/s3mByo5BlEKUjQN8wKL2w99R591TIfW16s
         npW6QGxZTeCaR8+INsHIegudiEsbk+IgKSt0e0j/GT/ALZgxJLttxkF21wn1B5om13pa
         91fw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=UgZ564q3;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id af79cd13be357-7c573bb16f6sor231879185a.8.2025.03.14.07.16.51
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 14 Mar 2025 07:16:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXZy4Hszj1e3eXhbb9lGs2y3WHEj2gI/L+b4L7hdfyp3xNpE1Xhqw4cq7JW7hSQ0KW82yRGUpN+4WQ28w==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncsUeefwEO+Mp6ZChOKrIkIqB1v1x0nC/Xx4vkSbApPGMhrrzzURdnQG+8pfpOR
	P62CUaTPCjc24L27vrlr3H1NYF0mqprX7bB5jLNW1tjhxTZ9FTCgJS8nSK88DwYeYbfI8WwBMKm
	xlyYNze75jctnhJJIxKw4BUAk6Vtb6/qoXJ8+ZQrve+x8FNKjEqQ51ae1FCaWdlSc6ES3mUjmcF
	pURu3SN65Lw45yiux4U+q2lVwhcHT5ZbVKmxQtFNSu+NzlZ9m1EMkxL5tjtr/VYIrfYvhuIDc6B
	8GLnD5guEUADNE9gQ6PodKkuIyoZ+y0HNTXRIQCFwkqIGWwY5UAbfC25sH1lL5DdJz4h8KR9zw=
	=
X-Received: by 2002:a05:620a:1915:b0:7c5:5286:4369 with SMTP id af79cd13be357-7c57c7c2175mr289543085a.28.1741961810643;
        Fri, 14 Mar 2025 07:16:50 -0700 (PDT)
Received: from rowland.harvard.edu ([140.247.181.15])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c573d8a3acsm255828885a.109.2025.03.14.07.16.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Mar 2025 07:16:50 -0700 (PDT)
Date: Fri, 14 Mar 2025 10:16:48 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: daixin_tkzc <daixin_tkzc@163.com>
Cc: Greg KH <gregkh@linuxfoundation.org>,
	matthew dharm <mdharm-usb@one-eyed-alien.net>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: Re: [usb-storage] Re:Re:[PATCH] usb: storage: Fix `us->iobuf` size
 for BOT transmission to prevent memory overflow
Message-ID: <516c8f89-45f2-4d3f-b1e7-29aecfc8cd3c@rowland.harvard.edu>
References: <20250311084111.322351-1-daixin_tkzc@163.com>
 <2b6c4aa7.b165.1958f6b7a3a.Coremail.daixin_tkzc@163.com>
 <814316b6-013b-4735-995d-b6c0c616c71b@rowland.harvard.edu>
 <1681f087.2727.195927b7ccb.Coremail.daixin_tkzc@163.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1681f087.2727.195927b7ccb.Coremail.daixin_tkzc@163.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=UgZ564q3;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Content-Transfer-Encoding: quoted-printable
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

On Fri, Mar 14, 2025 at 10:28:41AM +0800, daixin_tkzc wrote:
> I'm sorry for not making my point clear.=20
>=20
> DWC_otg driver can handle packet babble in the data phase properly. It pr=
ovides interrupt function, dwc2_hc_babble_intr, It mainly does two things:
>=20
> 1) Delete the URB request from the endpoint linked list maintained by the=
 USB host controller, mark the URB transfer result as OVERFLOW error, and d=
elete the remaining URB requests in the data phase of the BOT transfer.
>=20
> 2) Halt the currently used channel and indicate that the reason for the c=
hannel halt is Babble Error.
>=20
> When the urb complete (babble error occurs), the sg_complete function of =
urb(s) will notify the mass storage driver that the data phase of the BOT t=
ransfer is over. The rest is done by the mass storage driver, such us:
>=20
> 1) Get CSW for device status, interpret CSW, return USB_STOR_TRANSPORT_ER=
ROR.
>=20
> 2) Handle Errors(here is USB_STOR_TRANSPORT_ERROR).
>=20
> 3) Initiate port reset.
>=20
> 4) Notify the SCSI layer implements a retransmission mechanism.
>=20
> How us->iobuf overflow could occur?
>=20
> For 1), the USB device does not know that a Babble Error has occurred at =
this time (DWC_otg knows what happened), It actually continuously returns 5=
12 bytes data through DMA write to CSW address (As can be seen in the wavef=
orm in the appendix document before). The DWC_otg controller driver cannot =
control how much data the device returns(13 or 512 bytes).

But the DWC_otg controller _can_ control how much data gets written to=20
the URB's transfer buffer.

>  However, the USB storage driver pre-allocates a default buffer size of 6=
4 bytes for CBW/CSW.

Furthermore, the CSW URB has a transfer_length of 13.  So the DWC_otg=20
controller will ensure that no more than 13 bytes are written to the=20
buffer, even if the device sends 512 bytes.  Right?

Alan Stern

> For 3), the device does not realize that a babble error has occurred unti=
l the port reset is successfully completed (by interface usb_stor_port_rese=
t). Then device will enter the enumeration process. It looks like things ar=
e heading in the right direction.
>=20
> For 4), as for the urb that has a babble error, SCSI will execute a retra=
nsmission mechanism.
>=20
> thanks,
>=20
> Dai xin
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> At 2025-03-13 22:36:32, "Alan Stern" <stern@rowland.harvard.edu> wrote:
> >On Thu, Mar 13, 2025 at 08:12:20PM +0800, daixin_tkzc wrote:
> >> Thank you for reviewing my patch.
> >>=20
> >>=20
> >> I'm sorry I just responded individually.
> >>=20
> >>=20
> >> Of course, when the USB device and host are transmitting normally, us-=
>iobuf size is 64, which is enough for CBW/CSW and there will be no problem=
.=20
> >> Howerver, we encountered a problem in the FPGA verification environmen=
t, that is, the DWC otg controller detected a Babble Error, and we believe =
that the processing flow of the device driver will cause the risk of us->io=
buf overflow.=20
> >>=20
> >>=20
> >> Regarding USB Babble Error, the DWC_otg_programming manual describes i=
t as follows:
> >> |
> >>=20
> >> 3.8.1 Handling Babble Conditions
> >>=20
> >> DWC_otg handles two cases of babble: packet babble and port babble. Pa=
cket babble occurs if the device sends more data than the maximum packet si=
ze for the channel. Port babble occurs if the controller continues to recei=
ve data from the device at EOF2 (the end of frame 2, which is very close to=
 SOF).
> >>=20
> >> When DWC_otg detects a packet babble, it stops writing data into the R=
x buffer and waits for the end of packet (EOP). When it detects an EOP, it =
flushes already-written data in the Rx buffer and generates a Babble interr=
upt to the application
> >>=20
> >> |
> >
> >What is your point?
> >
> >Are you claiming that the DWC_otg driver doesn't handle packet babble=20
> >properly?  If that is true then you need to fix the DWC_otg driver, not=
=20
> >change the usb-storage driver.
> >
> >You have not done a good job of explaining how us->iobuf overflow could=
=20
> >occur.
> >
> >Alan Stern
>=20
> --=20
> You received this message because you are subscribed to the Google Groups=
 "USB Mass Storage on Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
> To view this discussion visit https://groups.google.com/a/lists.one-eyed-=
alien.net/d/msgid/usb-storage/1681f087.2727.195927b7ccb.Coremail.daixin_tkz=
c%40163.com.

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/516c8f89-45f2-4d3f-b1e7-29aecfc8cd3c%40rowland.=
harvard.edu.
