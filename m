Return-Path: <usb-storage+bncBCCL7Q422UBBB2X3UH4AKGQEQ5COEBA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 954C921B8DF
	for <lists+usb-storage@lfdr.de>; Fri, 10 Jul 2020 16:40:43 +0200 (CEST)
Received: by mail-oo1-xc45.google.com with SMTP id w2sf3886363ook.14
        for <lists+usb-storage@lfdr.de>; Fri, 10 Jul 2020 07:40:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594392042; cv=pass;
        d=google.com; s=arc-20160816;
        b=vM9l+XPytqL+B75A/N7eugbmDLwZx9Q1Fcrq3xVMXCc/U8fxSYza3jXk8F68ZR7OFT
         3HL6aWItGT09FuAPuIm5smuwB1jeCTiATmHU1qjT+OrCl3RyB/X51QfhItt+CqO7kcqS
         rq01MpW9yJdVtF3vpjaI73WeQk7hg+DUpVZkT+NlL67Mvq5LaWtvdLayIpWx8/iYVtVa
         KuJY21+F1bcGRSobqJ9fCsqGIMNzLlPeVD8jIZJZYuKLdH4GlbpfqBnPMKSR5cPPep+M
         qeYnKebwdkICemCgaZQr8Qg9cmsLAoF28VoKnKldVjyBl+ByzCBJzWvpC+WGB+gt4m6E
         zBUg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=wo/Pr0ea+W+cO+bxE6hl4VLyj0zu2Ie9YJqKlxtFYjQ=;
        b=tX1UwWLG9zkhfQ0pUYbOW/bmwh6PzMix8DXxCHQT3PId4EtVlxVDkF9njd5LuJewn/
         203SnzZq/MYBJ4mUlOTTVZAxuFxFncfOPw3YMJg8blD9RPVJ+2dko61ku5RqBB2u3/Wk
         9o/r/GL3jZUmlsmjfKlbFeHfOM+ztb0ns56Lv5BLHhiRbuAVA81IGg+UOFre3U2Qx5e1
         pigkkrmMhxfO+TDvKp1u5/69CiWk8ZqWhh3NnJye7AzjhvmTkTTK3ehTs1HQvPJ0oPCL
         Cl53th+LSvwaJitWcoKaKtM8ynOwu0Z5UrtIMcRuPg3SMlf7zyG/wWG89JkXTXOvATn5
         wZXw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ejIuwuJ5;
       spf=pass (google.com: domain of shorne@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=shorne@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wo/Pr0ea+W+cO+bxE6hl4VLyj0zu2Ie9YJqKlxtFYjQ=;
        b=At/drEw31qVOW0W5I+ghSAed7rVjnPGI3tge7oWibv/eEsaRvLTBx74+mZVXnjvclN
         ffPhcaa3drAsjrFvfX3ng7vTNsrwQ1dH8ScKMKHTUDvU3CTIl7mw9TPIPpOB74Ya600o
         npCKWN3F227e38fKdSnKdg/zw7oVckeFzatdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wo/Pr0ea+W+cO+bxE6hl4VLyj0zu2Ie9YJqKlxtFYjQ=;
        b=IsyXV+GMKuyMxc/NvYHWLf2l8O303qU72Ui1IXdcE2rf6G/mEHswMIhLmQMspXq6W2
         wTBotgU1VKDKzT2Oz2ltB0mZ2rvfJ8615Hqcmk07ZECkYzfBsanTH7sDVpKQcmjn0iDp
         jwLVrTYDvfjx31vzX0FI9AEltfUETsCvolQHwL8MxSSltHIuNfp3JNf+3nJNQrMC/zjj
         J2ORizEME7INfHX63Yv11pSgApjCmbBJ7QYqSzNIyBrj9soAK7EqYu7eentdQSsNMs0o
         7mRGt1wV084scEVOE0nw79r9Un+09nEnHtsWX+sknTXbaCFLkVoU+rnr6kgRstMySsuu
         7PtQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533F+EwEbNcAH2XjztKLp6vE985qK/uVAQHGkZDXd2yZCBDytSu1
	vjJNoMtvXmnMvikljuEnsTVohQ==
X-Google-Smtp-Source: ABdhPJz1VMUzA7VPVtcHKhcztdeitKdxftxnOkBggnBmDr+C13SjJDp6NYqSmRRkzNauNKbz5JD+Mw==
X-Received: by 2002:a05:6830:3094:: with SMTP id f20mr50306304ots.283.1594392042528;
        Fri, 10 Jul 2020 07:40:42 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6830:3116:: with SMTP id b22ls2014292ots.6.gmail; Fri,
 10 Jul 2020 07:40:42 -0700 (PDT)
X-Received: by 2002:a9d:da7:: with SMTP id 36mr41235312ots.133.1594392042156;
        Fri, 10 Jul 2020 07:40:42 -0700 (PDT)
Received: by 2002:a05:6808:298:b029:c2:3b50:3c57 with SMTP id z24-20020a0568080298b02900c23b503c57msoic;
        Fri, 10 Jul 2020 03:36:25 -0700 (PDT)
X-Received: by 2002:a17:90a:de0c:: with SMTP id m12mr5074529pjv.228.1594377385303;
        Fri, 10 Jul 2020 03:36:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594377385; cv=none;
        d=google.com; s=arc-20160816;
        b=EylfyCKhGMjix/GrSO4Z/mBtEAu/2izeqBEs2J5ZDfbsG6HbRmA86ceDiU7pm7zbTv
         Mg0BueaUy6h3b12SDe5glS0r43FOcIgEZiPb8WpSrl1vy3Uj5niDsRakjg/uTzUSQwDC
         svDzOyMLMRIJu4Ruj1PfAUJJJGOrR4w6dWrK8cwFRNEVrl7lxPrdB5LMFYsxxBTTCOrU
         1ddHH4xJhFlBJJ0sa4ZZZKS1e4xyODKsmvj4WFqQk3WpgDTG+WnVOBQInnHJW0j7lxoO
         OcVI3nNyBSWZYu72tJQgL5Luxu6roYKKEPjcb8ImA1u2FX5jQHvWFwd9rd/RR0lIQO92
         wZTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=k6E7LH2Rsa+GnrRcP6ifXPuNeY+Ay8cfhxue4cHFp+Y=;
        b=EJpip/VepofBHdp5ExCEkESyH89t15Zf1sNQ1iZcPw2qgl4lduKo6IVcY3lskXkT5X
         3A/mkgMzVtKZmBqXCMGREVqLnnwlpFg0zX9dNRIEa7Z4qrRLjGVfWTuQvkXYGvgCtO1r
         kA9denNNEqACjfrxHha5p3Xwgr8kE0ytLXHg/sH4Ref14hr/saLavgRlXth76mJl2cPA
         qJ4QHe/cgHNLzdwZNlp1AeyKjN16EB63gG1ltHhfwKncLuKrrrxhqQhaOsuH3iB9wmGw
         4Dz2j4BSHt11wWtactO/8h7inHLbOgOJpEB++rwKzK7bHKfXOhZmPWL+DMuvZuTrqlri
         /d/A==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ejIuwuJ5;
       spf=pass (google.com: domain of shorne@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=shorne@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id o5sor6940445pgc.56.2020.07.10.03.36.25
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Fri, 10 Jul 2020 03:36:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of shorne@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a63:6ec2:: with SMTP id j185mr26610040pgc.176.1594377384965;
        Fri, 10 Jul 2020 03:36:24 -0700 (PDT)
Received: from localhost (g175.219-103-161.ppp.wakwak.ne.jp. [219.103.161.175])
        by smtp.gmail.com with ESMTPSA id 66sm5486863pfg.63.2020.07.10.03.36.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 03:36:24 -0700 (PDT)
Date: Fri, 10 Jul 2020 19:36:21 +0900
From: Stafford Horne <shorne@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: "Alexander A. Klimov" <grandmaster@al2klimov.de>,
	stern@rowland.harvard.edu, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	Jonathan Corbet <corbet@lwn.net>,
	David Miller <davem@davemloft.net>,
	Linus Torvalds <torvalds@linux-foundation.org>
Subject: [usb-storage] Re: [PATCH] Replace HTTP links with HTTPS ones: USB
 MASS STORAGE DRIVER
Message-ID: <20200710103621.GA437393@lianli.shorne-pla.net>
References: <20200708095500.13694-1-grandmaster@al2klimov.de>
 <20200708103928.GC585606@kroah.com>
 <6b78a3fd-04b9-fc8e-b5c6-f03372a4cd31@al2klimov.de>
 <20200709061409.GA130260@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200709061409.GA130260@kroah.com>
X-Original-Sender: shorne@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ejIuwuJ5;       spf=pass
 (google.com: domain of shorne@gmail.com designates 209.85.220.65 as permitted
 sender) smtp.mailfrom=shorne@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jul 09, 2020 at 08:14:09AM +0200, Greg KH wrote:
> On Wed, Jul 08, 2020 at 08:41:54PM +0200, Alexander A. Klimov wrote:
> >=20
> >=20
> > Am 08.07.20 um 12:39 schrieb Greg KH:
> > > On Wed, Jul 08, 2020 at 11:55:00AM +0200, Alexander A. Klimov wrote:
> > > > Rationale:
> > > > Reduces attack surface on kernel devs opening the links for MITM
> > > > as HTTPS traffic is much harder to manipulate.
> > > >=20
> > > > Deterministic algorithm:
> > > > For each file:
> > > >    If not .svg:
> > > >      For each line:
> > > >        If doesn't contain `\bxmlns\b`:
> > > >          For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
> > > > 	  If neither `\bgnu\.org/license`, nor `\bmozilla\.org/MPL\b`:
> > > >              If both the HTTP and HTTPS versions
> > > >              return 200 OK and serve the same content:
> > > >                Replace HTTP with HTTPS.
> > > >
> > > > Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
> > >=20
> > > Your subject lines are very odd compared to all patches for this
> > > subsystem, as well as all other kernel subsystems.  Any reason you ar=
e
> > > doing it this way and not the normal and standard method of:
> > > 	USB: storage: replace http links with https
> > >=20
> > > That would look more uniform as well as not shout at anyone.

I would agree.  The OpenRISC patch for this series says:
  "OPENRISC ARCHITECTURE:..."

Here it would just be "openrisc:..." I think fixing the whole series is nee=
ded.
Greg is not the only on complaining.

Ideally, I think, it would be good to have this sent out as a series i.e [P=
ATCH 3/55]
rather than individual patches so this could be discussed as a whole.

-Stafford

> > > thanks,
> > >=20
> > > greg k-h
> > >=20
> > Hi,
> >=20
> > I'm very sorry.
> >=20
> > As Torvalds has merged 93431e0607e5 and many of you devs (including big
> > maintainers like David Miller) just applied this stuff, I assumed that'=
s OK.
> >=20
> > And now I've rolled out tens of patches via shell loop... *sigh*
> >=20
> > As this is the third (I think) change request like this, I assume this =
rule
> > applies to all subsystems =E2=80=93 right?
>=20
> Yes, you should try to emulate what the subsystem does, look at other
> patches for the same files, but the format I suggested is almost always
> the correct one.  If not, I'm sure maintainers will be glad to tell you
> otherwise :)


--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/20200710103621.GA437393%40lianli.sho=
rne-pla.net.
