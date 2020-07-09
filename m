Return-Path: <usb-storage+bncBCUJ7YGL3QFBBNPLTL4AKGQEHZENI5Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 09BAE219855
	for <lists+usb-storage@lfdr.de>; Thu,  9 Jul 2020 08:14:15 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id x23sf616325plr.17
        for <lists+usb-storage@lfdr.de>; Wed, 08 Jul 2020 23:14:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594275253; cv=pass;
        d=google.com; s=arc-20160816;
        b=TEgGeJmUEgZbTEW2ivsiWJjMRTVoS2AWvaOD8/+QSudBSXOeS3jFEIfgfNw1YMHlu+
         /+aWYELDgHNYVWkooM4UEPQVvox4lquJAr+nvpaFhuckFBoecOrSse4S6jWlMZGuzll9
         K6eVMsonZ4jCNgvv2I3yW2uyiZEdX8OL58f0+IFvRz5Zf5DypifTHi8A0q2qdZc1m9RX
         sD2yy9rZX751LoKS8Uc2lblOLM1IGZnH+u3aF7+u8YC84a+MS4yYJ5A82BNSkU9RYx9a
         WfICL9n3gw9RJ08HtGsmTdM35UYZw+BPRj7QH4ob4Mqj+hYN1pkPyP351fV1efO0qwcS
         Cj3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=ZLma0L0fYOyIIfGg1giwAgGx0q3EgxtYutGCk0MH0PQ=;
        b=rLXsikXYARNn3Du8BFmYDAL1gVC+SNIlkcHPmH+Tv5RK2T9zhTQ3BBEUf6p/Gr8jhd
         BYHpyDqyk2rwrtFCLjgkPOOMFb77dGZqmHoTw9UAnVnEtyi3Y50VSL051ZYzLX+Lynjp
         ge4kJDy0TgUPEXeEe+ShRKyYIQlFiaC/qSRh4Roh/q/pGReaxmSJl2O8xhB6sb5+Z5Gu
         7lD89TvXzF9vKSqTjXhfFVEPq16pLtVd+Z8vfvsE5LxFQ7E09qyvAQXSlAptvA477TbJ
         BzEiDnj+mNIev/RdVVDcL9lDfh5dUUwNA4cX44TPcPaPmyow5jIJH8/r06LIcRFPiFW1
         uQWQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GvSQXDN6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZLma0L0fYOyIIfGg1giwAgGx0q3EgxtYutGCk0MH0PQ=;
        b=lb9FwbbTuSoAFMrFFsUHf7+T3ZIbaxwhmvtk8MAFlPlrDRsBwh3klF2vRViFqLLpiY
         UQzy0gb+G6bYDdLiU9msK+y0SH6fWMP8+vi8Jx1MZVODBkM45QZZMcTnNsuFcWTDF3+y
         DVfux+l+UdAkGmf2ELTAD7hW0NaLfaLy8ygic=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZLma0L0fYOyIIfGg1giwAgGx0q3EgxtYutGCk0MH0PQ=;
        b=fhaXc5E5uwkxt7BJZQZ8/hul9W12LgYVT3HWy/KaeESKDO8/V3XfvQAnOeyQbMaKUg
         SfTsFQjkLwn9fs2inM+edHuubZVu1d8Aip/r3x3abpiaKDxqECq5JjER42ymwmlZe+kh
         wUwLDBtBOT8YNih/2kWkg9lg3ES4vWwE3HJztlu1rZkmRDxymgo9ZyMip42H4yGWIZwx
         +tUzzx+KKusAELmUOB7ahaccs5M469cI+h02SNM3TLaAkt6SidbO5zq23ij5LacNRRA0
         9inxZnEkF2Jmd0vW4vEnw/N9/48vjobH6Hgimh+tQUIfZ9ctsRlcO+X2VP3dKvuHxYCK
         4oWQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533CUJ7/8pt8yFdVDzl/6fSUweGGaYM4QPDu5zyJWKS5F8jYVGeJ
	8ub3cS7s+XD8VQo+LqB05w3xwA==
X-Google-Smtp-Source: ABdhPJwUpr3reJr/+AaKIt1i/xHvZPmG7PJVVcbMO+6Qe4iURuaByiEgfohqyQJVTrBH3oIZmO77zA==
X-Received: by 2002:a63:7c42:: with SMTP id l2mr51981894pgn.35.1594275253238;
        Wed, 08 Jul 2020 23:14:13 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:ea0e:: with SMTP id w14ls2071891pjy.3.canary-gmail;
 Wed, 08 Jul 2020 23:14:12 -0700 (PDT)
X-Received: by 2002:a17:90a:3523:: with SMTP id q32mr5594302pjb.185.1594275252726;
        Wed, 08 Jul 2020 23:14:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594275252; cv=none;
        d=google.com; s=arc-20160816;
        b=dJM4kF6qtv14lvgH9ILGEiAA6gucpUqQBkPEqK0Rc6EN0ttGwzY9WFb21fwR6pgZ2S
         Cro2j06QS2mw/ESDm/Pd0V2YItikL6AviD0sKYMuoI9Szi2JaV5ODA41I0x2+aYzUK5r
         omvYUmcKuzy6bHZXc/Mdmyc1da/3iBWUQUVPlBJU2FRgic0EglfLrlFx5i6igxAMuslw
         ju+WAXlKDnrVYGKFdz8Ivkm7eJa2S6+TVRtW+k7A6iuhzIkv9buv7iQvL/0yNt0Xnqpf
         a3v6bHlRHuds4MIDQWXIMDfKx3r8jWC7h3cNR/pp1v/kWvoDZadg+Pj8TPxHV4jVDEFG
         XZ4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=wH6GfyCa1ko7u5yFoN4xu3sw0oZ/zejDKRUonTKN440=;
        b=aXLSAgyUDXdtfUMJ1B821rOVLA0ux3wl9E6i7uDGy6ht8jZGI/s2855WFf/sa1jz4r
         enM4IS70AKXrsZvxzZFGIIHabOYqUlpm/JwzSV5rl4CWkG71DeKEyaBZoHgczaS2wwjR
         7g94ymutDEgsq5Igzm+urbyelj+NJ9+N0++CS3fQr+e33yBplkemwXd6AV2AYKqeat5K
         EAC8nq9petpFr8kZiILYTUFa+g5KX/l8DlWavkwowevszVo6JLXHPtuxKP6OuSoeJYxN
         KiQA/jg/PgFssut5w3WqzPe08Y7VGz8M5cjU+5D5kJf48GNpucl4GKX8l2hCBWiCSj1e
         EYbA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GvSQXDN6;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id c19si1440680pgw.141.2020.07.08.23.14.12
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Jul 2020 23:14:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C9FEB206A5;
	Thu,  9 Jul 2020 06:14:11 +0000 (UTC)
Date: Thu, 9 Jul 2020 08:14:09 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Cc: stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>,
	David Miller <davem@davemloft.net>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: [usb-storage] Re: [PATCH] Replace HTTP links with HTTPS ones: USB
 MASS STORAGE DRIVER
Message-ID: <20200709061409.GA130260@kroah.com>
References: <20200708095500.13694-1-grandmaster@al2klimov.de>
 <20200708103928.GC585606@kroah.com>
 <6b78a3fd-04b9-fc8e-b5c6-f03372a4cd31@al2klimov.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <6b78a3fd-04b9-fc8e-b5c6-f03372a4cd31@al2klimov.de>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=GvSQXDN6;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Wed, Jul 08, 2020 at 08:41:54PM +0200, Alexander A. Klimov wrote:
>=20
>=20
> Am 08.07.20 um 12:39 schrieb Greg KH:
> > On Wed, Jul 08, 2020 at 11:55:00AM +0200, Alexander A. Klimov wrote:
> > > Rationale:
> > > Reduces attack surface on kernel devs opening the links for MITM
> > > as HTTPS traffic is much harder to manipulate.
> > >=20
> > > Deterministic algorithm:
> > > For each file:
> > >    If not .svg:
> > >      For each line:
> > >        If doesn't contain `\bxmlns\b`:
> > >          For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
> > > 	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
> > >              If both the HTTP and HTTPS versions
> > >              return 200 OK and serve the same content:
> > >                Replace HTTP with HTTPS.
> > >=20
> > > Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
> >=20
> > Your subject lines are very odd compared to all patches for this
> > subsystem, as well as all other kernel subsystems.  Any reason you are
> > doing it this way and not the normal and standard method of:
> > 	USB: storage: replace http links with https
> >=20
> > That would look more uniform as well as not shout at anyone.
> >=20
> > thanks,
> >=20
> > greg k-h
> >=20
> Hi,
>=20
> I'm very sorry.
>=20
> As Torvalds has merged 93431e0607e5 and many of you devs (including big
> maintainers like David Miller) just applied this stuff, I assumed that's =
OK.
>=20
> And now I've rolled out tens of patches via shell loop... *sigh*
>=20
> As this is the third (I think) change request like this, I assume this ru=
le
> applies to all subsystems =E2=80=93 right?

Yes, you should try to emulate what the subsystem does, look at other
patches for the same files, but the format I suggested is almost always
the correct one.  If not, I'm sure maintainers will be glad to tell you
otherwise :)

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20200709061409.GA130260%40kroah.com.
