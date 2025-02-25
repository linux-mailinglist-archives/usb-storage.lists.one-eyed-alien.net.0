Return-Path: <usb-storage+bncBAABBDXX7C6QMGQEUL3VKHI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BC5A44F3A
	for <lists+usb-storage@lfdr.de>; Tue, 25 Feb 2025 22:52:15 +0100 (CET)
Received: by mail-qk1-x745.google.com with SMTP id af79cd13be357-7c096d65f9fsf1230217285a.1
        for <lists+usb-storage@lfdr.de>; Tue, 25 Feb 2025 13:52:15 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740520335; cv=pass;
        d=google.com; s=arc-20240605;
        b=jGnqotgd9ycR43Pka5TZftlPwAYhEtGLNNRiM7sOTXgiXFg8RPhv9CTKG5j3bMrZsx
         eluPZu1vovN8wTkQK6Z/YCR/lSXWLN88B9IXiksUyGOf1xLpCS02QAhk/AfWgIF0qS+u
         mSRtWJvW572CypPIOlVX9uL7PtOLayQvKmSWhRw3ySTEsj+JjjA1JzPeCJadVrg5pB+6
         WylwgVyD+Y7Cc1w51LMH128vx5QIRYyTw1B00n9S2PUR8rlyO6lzSeQWfQhzZ/upea3x
         XbQKa6vZ3N+bQidwMLRZfYiaKb2ti33WFxbf58xGYle119RuaHDfWaYsSnn3F87xQ0Lr
         I6og==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=FjjwI4Oq+8HRWoxROG2bGcSGQJJgI02tbdI+9Q9j3S0=;
        fh=to6qQD2Pn0iq7NDdtmQ/1pYRGaLnZXEsqFcjbKh9nks=;
        b=Tdi5MdQ8vMZuLbxkcp5S2bJ8ychhzIfzBFg4RKNbO1pOPU/7hkJ8xu1HtWAUpVCu4q
         6k/Qc88lW4D/B1FjEggzpZFfdrY6WjnDpACRXleptzAzBl9gD7BtSvA9uMpjayAPu7LQ
         ZmdzJjK0WO/NvbbjRea69QqQrzJYvisKtoMGTIRrorKS/2t9t18e2FHD9dW3ZOrF5zXq
         p2fSf7ig6ykveLisQ4XaQcpC1iDQwnBrRujxkUnPtz4pjkon9MZTjP3w3rGq6Ddgtm/u
         WlA///LLrbfB4/bmyv+M4YyZ1MLI4SWfaB54PD9pUqnFbf9TynY7NeEaFg8LSA82Ww1O
         wnGg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@posteo.net header.s=2017 header.b=LKrvjzfz;
       spf=pass (google.com: domain of j.ne@posteo.net designates 185.67.36.65 as permitted sender) smtp.mailfrom=j.ne@posteo.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=posteo.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1740520335; x=1741125135; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=FjjwI4Oq+8HRWoxROG2bGcSGQJJgI02tbdI+9Q9j3S0=;
        b=KONQ1rlBys6EzrYciWF8BuInmkdI9Q1VvjfNGCjQfovJWmwAk7HfNOJe+oKC3gNsdf
         +hrYMThb3tvZfh1PPhSxLOoVwMqh93N4469tTcMy37d7LSXtVlE51BnvmZWQJzP2eqy0
         VvClB/DcHEahzYNYGnakelZU1aiDw+dgggW0I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740520335; x=1741125135;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FjjwI4Oq+8HRWoxROG2bGcSGQJJgI02tbdI+9Q9j3S0=;
        b=L1ISjYeWiqEmEcPkeASttlA1CWU3YllLMwXDOj+YypzEhR6uEIit1xMsLFONz52rnl
         m/x1yDPd6x+NNq+dgAwv+eMiXfiYOe6/uhYN4msncpA9TuXS6CK2fW1wElzUTzWWWOQ7
         fslpx1i6S5/WLFh57UR4QTUuLv5KsrjnZACNvMRy2wHUyYQC88zQH5KnTErjmC79uZwN
         l+sbXQJ0LEBMlmulIv5DJgTsHJromr/htTCf8rIzMlvHSA/+UnWjnMkQ6cLLmZaUERt4
         KXsV5NTk6UnDXJbBnsw5S7RG2LXlXB5zaha0lib2+VJiirG5/yiIpxTYHN/WxcjFfPDi
         ZGkA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCWiyEuvONKUl/Fcm8DCjECqOGLiBdKodYcMSHcdQDu1LFg9O0LCKjfzkVkh7JRYW+S7et29mQ==@lfdr.de
X-Gm-Message-State: AOJu0YwHQzBTwW7aUBKu8XxuLMyD3LY01OOZ62iTXzuH1WrSMJVatbdI
	vxk2s4PdsuZQgCA12XwdMnuGjPJqWgoHuAbE7VlYwSbbS3CVDV87Z4BJ0RL5g2o=
X-Google-Smtp-Source: AGHT+IH/+Akkj84Em/1dtfv8sb3+ANQ6OvUwoSMJkwRwvlOteINJ0EvLUgp/cfSO6kMj5S3VzNQK+Q==
X-Received: by 2002:a05:620a:2494:b0:7c0:9df3:a0cb with SMTP id af79cd13be357-7c247fe223cmr163732985a.53.1740520334695;
        Tue, 25 Feb 2025 13:52:14 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=Adn5yVGhfq1vKsgh1Z1aOVA5nJKKFCRrXdIEFus6KVHa4u9NUA==
Received: by 2002:a0c:ee85:0:b0:6d4:18b4:dc77 with SMTP id 6a1803df08f44-6e886b35145ls3270866d6.0.-pod-prod-09-us;
 Tue, 25 Feb 2025 13:52:13 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCW1Q6LczLcAOEfHG6SwzMVCkx1oPC0MXW4GgmbhVbruST7a6cv9whh1q1OfKwvK5+MGHxF++SFTkeDVTw==@lists.one-eyed-alien.net
X-Received: by 2002:a05:620a:4247:b0:7c0:a075:3d93 with SMTP id af79cd13be357-7c247e0ac60mr162542085a.0.1740520333645;
        Tue, 25 Feb 2025 13:52:13 -0800 (PST)
Received: by 2002:ab3:1083:0:b0:290:34b3:7e37 with SMTP id a1c4a302cd1d6-29053b8899emsc7a;
        Tue, 25 Feb 2025 13:23:43 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVdFBI/ld39lhfWo/oVfM0jTNyHB1TP2uUk2q1q+9BAqvAya1JehNYfDl5AJfBbOurioR/fDcrnUhyuoA==@lists.one-eyed-alien.net
X-Received: by 2002:a05:6512:1116:b0:545:10e1:b1c9 with SMTP id 2adb3069b0e04-548510cf98amr3437983e87.20.1740518621969;
        Tue, 25 Feb 2025 13:23:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740518621; cv=none;
        d=google.com; s=arc-20240605;
        b=BQXefvAh0SH+W9eY9QxtFzY1cYkmBgtwGtTIx9PT5y46fhG80ZFkZ0pNkTn0HVn+v9
         pfB/Jo0/G7ncqUxaYYGv0/UISgdNw02AYsqd8euIEmjulHSbodEfhOKsltsrt3/O5weo
         NbQYqjMmv387oei7IyZ84n7vG9hvIX4iYYQBQTL0b64rmaLfdcBM30Ar2zb07eKcH8jC
         qFsdxkZsry7k6QahOl8RkjL2kfpDLHgmiDOgPMGKlLF+mhqTFB44vCo54/bnYJpVXPwb
         u7KiQhwEeKiIpGIaKWOnT7OczYPWZcSfJ15Yb8HYZE5eSq/O/EGemrG+HwmYBBFQmrf+
         O/gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=twSR6nm0v2u5b8nLKcly7K8fOKCAVPw7rvz6nEDVynw=;
        fh=wKK0Oi3HvNTSZVPzr63pIKEUIHtBH8rHnG2ZGERQNXE=;
        b=PiitwU+Vl9NBrj0kgmWuG+nNtY/hfMtaHrmtonI3nJ15XVHFl7uTwQn9THs1ezvIF6
         Eg204XFH1tlmI69M04BJbeZl/4UeceR0c0U8K1Px3I6LnWS7u+kPyXe4sL18Bk7OXqgI
         ScX+x001vvKaDGu97q5+HAf+wOkUIC+oaDLoWjgoH0A8AXbgGNaRbrLUMJkTVI3ObB0n
         +99aRecEntuAZd1PvHjhrQmQ6JuMKKZfIDQSl6uwgdZYKBCCwSkEugb597bM/clwnQwM
         C3Y2H5zF6QlGVr1jfJGJGAlbUkvIbrpiAQSkwyBR6EqJ8tfoBlSlBSIDbx+yPbvDxuee
         b+/Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@posteo.net header.s=2017 header.b=LKrvjzfz;
       spf=pass (google.com: domain of j.ne@posteo.net designates 185.67.36.65 as permitted sender) smtp.mailfrom=j.ne@posteo.net;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=posteo.net
Received: from mout01.posteo.de (mout01.posteo.de. [185.67.36.65])
        by mx.google.com with ESMTPS id 2adb3069b0e04-548514ee1d0si1965674e87.269.2025.02.25.13.23.41
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 13:23:41 -0800 (PST)
Received-SPF: pass (google.com: domain of j.ne@posteo.net designates 185.67.36.65 as permitted sender) client-ip=185.67.36.65;
Received: from submission (posteo.de [185.67.36.169]) 
	by mout01.posteo.de (Postfix) with ESMTPS id 45F81240028
	for <usb-storage@lists.one-eyed-alien.net>; Tue, 25 Feb 2025 22:23:41 +0100 (CET)
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 4Z2Vvw1c3Wz9rxB;
	Tue, 25 Feb 2025 22:23:40 +0100 (CET)
Date: Tue, 25 Feb 2025 21:23:40 +0000
From: =?utf-8?Q?J=2E_Neusch=C3=A4fer?= <j.ne@posteo.net>
To: Alan Stern <stern@rowland.harvard.edu>
Cc: j.ne@posteo.net, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org,
	Jonathan =?utf-8?Q?Neusch=C3=A4fer?= <j.neuschaefer@gmx.net>
Subject: [usb-storage] Re: [PATCH] usb: storage: jumpshot: Use const for
 constant arrays
Message-ID: <Z7403OPZUf7WZ5Ai@probook>
References: <20250225-misc-const-v1-1-121ff3b86437@posteo.net>
 <a4e81827-b506-491f-8087-204044705c42@rowland.harvard.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <a4e81827-b506-491f-8087-204044705c42@rowland.harvard.edu>
X-Original-Sender: j.ne@posteo.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@posteo.net header.s=2017 header.b=LKrvjzfz;       spf=pass
 (google.com: domain of j.ne@posteo.net designates 185.67.36.65 as permitted
 sender) smtp.mailfrom=j.ne@posteo.net;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=posteo.net
Precedence: list
Mailing-list: list usb-storage@lists.one-eyed-alien.net; contact usb-storage+owners@lists.one-eyed-alien.net
List-ID: <usb-storage.lists.one-eyed-alien.net>
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

On Tue, Feb 25, 2025 at 10:11:02AM -0500, Alan Stern wrote:
> On Tue, Feb 25, 2025 at 01:25:03PM +0100, J. Neusch=C3=A4fer via B4 Relay=
 wrote:
> > From: "J. Neusch=C3=A4fer" <j.ne@posteo.net>
> >=20
> > These arrays are not modified. Make them const.
>=20
> This does not explain _why_ you want to declare these arrays const.
>=20
> > Signed-off-by: J. Neusch=C3=A4fer <j.ne@posteo.net>
> > ---
> > Signed-off-by: Jonathan Neusch=C3=A4fer <j.neuschaefer@gmx.net>
>=20
> There should not be two Signed-off-by lines for the same person.  You=20
> should keep only the one with the email address you used for sending the=
=20
> patch.  And it should have your full name, just like signing a legal=20
> document.

Ah sorry, editing error on my part (I started the patch a while ago and
since switched to a different email provider).

>=20
> > ---
> >=20
> > This change was compile-tested with ARCH=3Dpowerpc
> > ---
> >  drivers/usb/storage/jumpshot.c | 10 +++++-----
> >  1 file changed, 5 insertions(+), 5 deletions(-)
> >=20
> > diff --git a/drivers/usb/storage/jumpshot.c b/drivers/usb/storage/jumps=
hot.c
> > index 39ca84d6859122903de4e64b13e697e8b7d4ab31..089c6f8ac85fbb683cca8b0=
3a2ff06c0ca776167 100644
> > --- a/drivers/usb/storage/jumpshot.c
> > +++ b/drivers/usb/storage/jumpshot.c
> > @@ -367,16 +367,16 @@ static int jumpshot_handle_mode_sense(struct us_d=
ata *us,
> >  				      struct scsi_cmnd * srb,=20
> >  				      int sense_6)
> >  {
> > -	static unsigned char rw_err_page[12] =3D {
> > +	static const unsigned char rw_err_page[12] =3D {
> >  		0x1, 0xA, 0x21, 1, 0, 0, 0, 0, 1, 0, 0, 0
> >  	};
> > -	static unsigned char cache_page[12] =3D {
> > +	static const unsigned char cache_page[12] =3D {
> >  		0x8, 0xA, 0x1, 0, 0, 0, 0, 0, 0, 0, 0, 0
> >  	};
> > -	static unsigned char rbac_page[12] =3D {
> > +	static const unsigned char rbac_page[12] =3D {
> >  		0x1B, 0xA, 0, 0x81, 0, 0, 0, 0, 0, 0, 0, 0
> >  	};
> > -	static unsigned char timer_page[8] =3D {
> > +	static const unsigned char timer_page[8] =3D {
> >  		0x1C, 0x6, 0, 0, 0, 0
> >  	};
> >  	unsigned char pc, page_code;
> > @@ -477,7 +477,7 @@ static int jumpshot_transport(struct scsi_cmnd *srb=
, struct us_data *us)
> >  	int rc;
> >  	unsigned long block, blocks;
> >  	unsigned char *ptr =3D us->iobuf;
> > -	static unsigned char inquiry_response[8] =3D {
> > +	static const unsigned char inquiry_response[8] =3D {
> >  		0x00, 0x80, 0x00, 0x01, 0x1F, 0x00, 0x00, 0x00
> >  	};
>=20
> There's nothing wrong with this.  However, several other source files in=
=20
> this directory also have static arrays that are never written to.  Why=20
> don't you change all of them?
>=20
> If you do, it will be best to put the changes for each of the files in=20
> its own patch, and then submit them as a series of patches.

That's a good idea, I'll do it.


>=20
> Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-al=
ien.net/d/msgid/usb-storage/Z7403OPZUf7WZ5Ai%40probook.
