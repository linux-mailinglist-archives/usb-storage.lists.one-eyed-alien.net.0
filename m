Return-Path: <usb-storage+bncBC5J7HGFV4DBBIUBXSZAMGQESCGC5YY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x847.google.com (mail-qt1-x847.google.com [IPv6:2607:f8b0:4864:20::847])
	by mail.lfdr.de (Postfix) with ESMTPS id AE5368CCE3E
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 10:38:59 +0200 (CEST)
Received: by mail-qt1-x847.google.com with SMTP id d75a77b69052e-43e1c1c333bsf130787891cf.0
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 01:38:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716453538; cv=pass;
        d=google.com; s=arc-20160816;
        b=fqsaS+ln2ADbUbGrKAEtQQDyoWX+1BN+vADmPDtCWsExMt5U5tcqDle0Ro3MhOWPxx
         F0Pmv6nQwcO6OBhkipDHwt11HgdRuKLIhWDzbIXYbeV0hOXBzk21BYVQYQSQ2I6OEjSe
         h0J2FMjL9pW0Ovm7GVrkCUM+K9lJ+Vl81qiCIQyoSy47LORVv7zDigJBVzK0z6bcOyMC
         ZpsnbmtmOtCJ1zs66kI6HnhV00tfyQ2Qu5uDO9bIp3ogBPhD6iNXdRZ4LmFqUd4fJ+uZ
         REfTmSbQHmGD70D978zloRDNf0I2FnSMQv+R/sCUAoox/9kSXlq7aniEF95gwaz+faKM
         XWUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Jvfa6pIhOU/dQaIBDmQkZUn8mjJyFc2mjg4VhG8e4nc=;
        fh=aPo1Wf6nA+EMZSGcSrooAPUEgPbbJPrr/h9qm4VeWZU=;
        b=Xfr2HSPq7Nvlzh5rylX8XBrGIlDgeFgGeNAD9GUHLUajWes8vr4hJFp/KmMEHaDGBA
         hJlUJA0zg4g6akoMaEAxC35Fk0SBk4jug4oAkHO/xkd+hh6+lqppMoGVrMPE+LxRNbyx
         PS6tHu2Jm0udcQdeUKFRKMl/wffjl4KmJVKZ9rrBOK8pIvvPIq+5pac84vNyDmeC7lPg
         bNKNax3Q4FGTuOmjci7Mg+5p2RyW3AkeNeKFuy96a27eCPke6hXdO0s2GrIQ309faLV9
         vOIU8x81Zgrr2kAttucuGqxLyIJ0QIW/HHVfksauee4ivn6MA8l9WxYyb/iddKPNocBL
         DPDg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=i8LzGxNL;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716453538; x=1717058338; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jvfa6pIhOU/dQaIBDmQkZUn8mjJyFc2mjg4VhG8e4nc=;
        b=TANs0wgqYGjtJShpKxqR5hBC6JrqLrtnrHS9SJyvinedPE1GQPWcpJ1aZTPMag623z
         /IW9yieAZi3nJ+Wm0oJtIEXI/KX13J0F2a9eqkHRKi3L65+u+ZJEfK9rzyeSsRhLiQEC
         CLYTmFOFgwk941zrgfJ0m2MbMr5aCJb4v8vtY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716453538; x=1717058338;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Jvfa6pIhOU/dQaIBDmQkZUn8mjJyFc2mjg4VhG8e4nc=;
        b=jdyppqjocGFIZ+Iwj9yjmx4LlqVgKDn4MapooKWepXkaLWxjyifb3q+kx4Sll2i54e
         RLwT2PoSbio3wXcxmy6b1Kd8eujhqnvDhfB4rTOXcIgXWpMd/91hxW9N9eGCbrMoPQuM
         0A2rdd3pTTJf4+ssB0swJaF/05SbvCofPc2zjOvMWcB9x+ObOc5fYttAlCsk8IHPXYtZ
         19W4Brm0XvVvOT9/IDopyUDXw/3Ckb0WJDjU4DXsDxRAjvXr5p4KK5Iw2FxjOYjbrPEq
         3Frzmdh3Y2qEv3H+hHWTTADhs5zcUnhqwqv/xUEGNj/wSAJ60Fk4jXdD/kZxXu4WvOWv
         /Vsw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXSAZcQG5AH4iCNRF2d51oc6t1HbiPsZyXQJt+n2b0eoxThSZA2I7aw/O9HarHehTtpUSZtrLuAligJQE/msP3e5m0G4xtojM2p
X-Gm-Message-State: AOJu0YxpYEssg2sk6v8IBsk1FXDYGrT9CUtxU1ffRD6oqtvJf3aPaYHg
	e9Mzv9P5IJBIfcOdtkIZejOYn5+VbIf3LxCndbVMKv1e62gNzECEaW9QsIQuSaA=
X-Google-Smtp-Source: AGHT+IHl4B7CyUAU4z6hV/rWUcKhhoYXD2b+r4Bvbgu2mjzwAIvbe8lD2oCG9uXf0ZXsuJB+wHUD9A==
X-Received: by 2002:ac8:7d0d:0:b0:43d:f943:624c with SMTP id d75a77b69052e-43f9e0a6b7emr42642601cf.6.1716453538434;
        Thu, 23 May 2024 01:38:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:253:b0:43a:f936:3cf8 with SMTP id
 d75a77b69052e-43ded9189c3ls36915011cf.2.-pod-prod-06-us; Thu, 23 May 2024
 01:38:57 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXrjiGLKP83fmMGyt/2mHWfc6GrDpBjWPE8AZSZz2y/42SdL4f1LeL/QWLyRPL+BjpeWmWo1igb3yBDFBVoHb6sZa9o5aozCeO/UChUmZWE3YQuqg8=
X-Received: by 2002:a05:6102:3a0c:b0:47e:8c27:7c25 with SMTP id ada2fe7eead31-4890a1557ecmr4346277137.24.1716453537237;
        Thu, 23 May 2024 01:38:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716453537; cv=none;
        d=google.com; s=arc-20160816;
        b=rGQplvmmH9RF9rsAdW555QrL9wfFqJ9BqCBV47sVapkeq0BiVABWp0xjicRnNvP12F
         k51lO8fmuioiQEUTsbCaujWW31/DAfu0LX4x9ZiI1uZCH8P78Zvu58KTvX3VU9D0QtOw
         NAGKGJaCtzfq7lLAsSf4vLRHAlDVM5MBzw3tPcW4NQllBOxkJ4f6ln1NlUAVVqt30IKH
         JgPEdr/jNDCecbjsp/nyotTZeH3B/1aDSBMGuMK7YyVwCjG1OrZwd+C80uqDBqBB6u3m
         zBZ+f9X5ogRVlMGjAsIkXJ5NaHhgEyWGlCx+/aBFSQP+rov9v2jBaQZEX0w0lNnQXbCX
         ZOoQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9csOlGWRmVqcgL4PfF9Gh3DoUKP7SZSiiSKMt2bYZ4Q=;
        fh=HhQ2Jv5g3PbEGyNLx1UNYouRGYEqUqBQOkFOg7joIVM=;
        b=A0l5yGg441RSBxEmimHv9DELa0H7CBDe2OSGH/CWlFzmFkyzgILDVQ59++RHmN+pDn
         vWKzqW//859pfeIu0jRWslDK7vVC5fiXKWutrXPTe0P0cU2EQlvdmiF/Q6xCZ4lXC4wr
         xLD+D5L4E7tWJ0mUonHoBSdEbLJ6GJ20RWHla4thXdSeEpE5a+pceQCYk2FH58Ncucs7
         07dkiCaYoS4gSWHJTR9lTx5/ac83uZ2ASWYKKLF7NPhaFyB/BNINuG4MgCK2TNpwlwZW
         7YwdXzcZOSuzd2gSSLT5J867HbkcVk521YJ1FBJccyxnGibT+ihr6ZRic1goCdKLSN6B
         scGQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=i8LzGxNL;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a1e0cc1a2514c-80327613f24sor563968241.5.2024.05.23.01.38.57
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 23 May 2024 01:38:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCV+eQQV4a0XmQTm9br6uxi23PYq5IY91HvtW017MBMxVHdjWHXvgaVZ2a+lxXWttK0yYdSplUy/FWff8/LMe1YokQSRedQ7AMqDy/XfNII1SIvi9FU=
X-Received: by 2002:a05:6122:927:b0:4d4:1a1a:6db7 with SMTP id
 71dfb90a1353d-4e216c0209bmr4284197e0c.2.1716453535478; Thu, 23 May 2024
 01:38:55 -0700 (PDT)
MIME-Version: 1.0
References: <20240523072242.787164-1-shichaorai@gmail.com> <a218cac3-9d9d-4ac9-8ea3-0ea9822b2261@suse.com>
In-Reply-To: <a218cac3-9d9d-4ac9-8ea3-0ea9822b2261@suse.com>
From: shichao lai <shichaorai@gmail.com>
Date: Thu, 23 May 2024 16:38:44 +0800
Message-ID: <CACjpba66LV2WX6YbrtH=r0wMzXFv3k3iF9SV63fZFj1uLXYeGw@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] Check whether divisor is non-zero before division
To: Oliver Neukum <oneukum@suse.com>
Cc: stern@rowland.harvard.edu, gregkh@linuxfoundation.org, 
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-kernel@vger.kernel.org, xingwei lee <xrivendell7@gmail.com>, 
	yue sun <samsun1006219@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000417eb406191afbeb"
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=i8LzGxNL;       spf=pass
 (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as
 permitted sender) smtp.mailfrom=shichaorai@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

--000000000000417eb406191afbeb
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 23, 2024 at 4:18=E2=80=AFPM Oliver Neukum <oneukum@suse.com> wr=
ote:

> On 23.05.24 09:22, Shichao Lai wrote:
>
> Hi,
>
> > Since uzonesize may be zero, so a judgement for non-zero is nessesary.
> >
> > Reported-by: xingwei lee <xrivendell7@gmail.com>
> > Reported-by: yue sun <samsun1006219@gmail.com>
> > Signed-off-by: Shichao Lai <shichaorai@gmail.com>
> > ---
> >   drivers/usb/storage/alauda.c | 2 ++
> >   1 file changed, 2 insertions(+)
> >
> > diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.=
c
> > index 115f05a6201a..db075a8c03cb 100644
> > --- a/drivers/usb/storage/alauda.c
> > +++ b/drivers/usb/storage/alauda.c
> > @@ -947,6 +947,8 @@ static int alauda_read_data(struct us_data *us,
> unsigned long address,
> >       sg =3D NULL;
> >
> >       while (sectors > 0) {
> > +             if (!uzonesize)
> > +                     return USB_STOR_TRANSPORT_ERROR;
>
> May I point out that uzonesize does not change in this function?
> There is no need to retest within the loop.
>
> >               unsigned int zone =3D lba / uzonesize; /* integer divisio=
n */
> >               unsigned int lba_offset =3D lba - (zone * uzonesize);
> >               unsigned int pages;
>
> Secondly, alauda_write_lba() has the same issue.
> You also need to check in alauda_write_data().
>
>         Regards
>                 Oliver
>

Thanks for the helpful tip!
I reviewed the code. Your code style can actually avoid repeated checks.
And there is also such a problem in alauda_write_lba().
I am a beginner at making patches. May I commit a patch again which fixes
both issues you mentioned?

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CACjpba66LV2WX6YbrtH%3Dr0wMzXFv3k3iF=
9SV63fZFj1uLXYeGw%40mail.gmail.com.

--000000000000417eb406191afbeb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, May 23, 2024 at 4:18=E2=80=AFPM O=
liver Neukum &lt;<a href=3D"mailto:oneukum@suse.com">oneukum@suse.com</a>&g=
t; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">On 23.05.24 09:22, Shichao Lai wrote:<br>
<br>
Hi,<br>
<br>
&gt; Since uzonesize may be zero, so a judgement for non-zero is nessesary.=
<br>
&gt; <br>
&gt; Reported-by: xingwei lee &lt;<a href=3D"mailto:xrivendell7@gmail.com" =
target=3D"_blank">xrivendell7@gmail.com</a>&gt;<br>
&gt; Reported-by: yue sun &lt;<a href=3D"mailto:samsun1006219@gmail.com" ta=
rget=3D"_blank">samsun1006219@gmail.com</a>&gt;<br>
&gt; Signed-off-by: Shichao Lai &lt;<a href=3D"mailto:shichaorai@gmail.com"=
 target=3D"_blank">shichaorai@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 =C2=A0drivers/usb/storage/alauda.c | 2 ++<br>
&gt;=C2=A0 =C2=A01 file changed, 2 insertions(+)<br>
&gt; <br>
&gt; diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda=
.c<br>
&gt; index 115f05a6201a..db075a8c03cb 100644<br>
&gt; --- a/drivers/usb/storage/alauda.c<br>
&gt; +++ b/drivers/usb/storage/alauda.c<br>
&gt; @@ -947,6 +947,8 @@ static int alauda_read_data(struct us_data *us, un=
signed long address,<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0sg =3D NULL;<br>
&gt;=C2=A0 =C2=A0<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0while (sectors &gt; 0) {<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0if (!uzonesize)<br>
&gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0return USB_STOR_TRANSPORT_ERROR;<br>
<br>
May I point out that uzonesize does not change in this function?<br>
There is no need to retest within the loop.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int zon=
e =3D lba / uzonesize; /* integer division */<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int lba=
_offset =3D lba - (zone * uzonesize);<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0unsigned int pag=
es;<br>
<br>
Secondly, alauda_write_lba() has the same issue.<br>
You also need to check in alauda_write_data().<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 Regards<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Oliver<br></blockqu=
ote><div>=C2=A0</div><div>Thanks for the helpful tip!</div><div>I reviewed =
the code. Your code style can actually avoid repeated checks.=C2=A0</div><d=
iv>And there is also such a problem in alauda_write_lba().</div><div>I am a=
 beginner at making patches. May I commit a patch again which=C2=A0fixes bo=
th=C2=A0issues you mentioned?</div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CACjpba66LV2WX6YbrtH%3Dr0=
wMzXFv3k3iF9SV63fZFj1uLXYeGw%40mail.gmail.com?utm_medium=3Demail&utm_source=
=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb=
-storage/CACjpba66LV2WX6YbrtH%3Dr0wMzXFv3k3iF9SV63fZFj1uLXYeGw%40mail.gmail=
.com</a>.<br />

--000000000000417eb406191afbeb--
