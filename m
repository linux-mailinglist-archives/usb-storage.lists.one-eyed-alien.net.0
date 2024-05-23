Return-Path: <usb-storage+bncBC5J7HGFV4DBBS4NXSZAMGQEEZQWJWA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id EEDF08CCEBD
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 11:05:16 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-6a156a0f5basf36859966d6.1
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 02:05:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716455116; cv=pass;
        d=google.com; s=arc-20160816;
        b=CGLfpBfeSnQ4MeNMh7Mi9vKyOyzYCaXVXaGs8VXI/BsId5WNpOLl6oDSeExx5pqSPd
         ZtD0F9LmpfKWYzqLkQymzTzwSD+M6voxb2ZNYAP5XaMxPqdHIWijRMaLFrf7WIxZWIgd
         aeBMtGpdY9zEhy2FvuqW1/fQC5WuWGJCiLQAK96ZjXRygD6UJojD5qNSsV+7z+oEN6qt
         dZY0oR+cKi2kK91jsp7iM5lBTdlFKqCgoXgJq2QHX+CcInNjdr0p1VhK2hhIDKw+Q+ql
         c18bLv5UkxgcKZi8fL12LOA72ZrBCgmRdvC8DPhmCdgMlDn1ByQwOIR1sFWOHCtRk2YJ
         0KZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=7SdPqh3dsl8sj5+wHDSahaDcL6OoQEhjU/OCgi478bk=;
        fh=FVmIDsmNLgy10WesL7OmmPKN8FGxyPdAcVpbWR+tGSQ=;
        b=ZAqsjxm4AsL9tkh9gv0znqL1pTWJwCnWcgV78gywaFulBn2ecI24v+QPtSQjIbgkxH
         ShblH086l/MJDWf30arDDum+N3p+BmUQVFUBNb7xznyOJp05ut6Rr//EhRFF3zn0IVGI
         P+C0wtEc/kUZauFrcSG+k5CTWC+A3a1tVKskGQpVinm01e99Hk3Zu/PVB/pksp3FCWy4
         1Rfv73ARMXcb0mFzVxKeqyEVkgBaa6yjRuZBGcS/idMDQUcMMTxly2aXAiY8ID1bjKAZ
         JVZEOpiz0cmoncJkMwF8eFkpZg400VA9bloDMOVd7NriEd+skXb5ciK3qA67nQdCASwQ
         4/gg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=WPNSYU07;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716455116; x=1717059916; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7SdPqh3dsl8sj5+wHDSahaDcL6OoQEhjU/OCgi478bk=;
        b=jJeoAS67Pfg2/eV4ksNN8SEUiZwBZZ42l9gpeXn3T+0SS4yVPkzkjSUV3se1/S+qbD
         XneTcCdNv+Q0ITlLj/Y0vSSpq/1cqvK+0nA97EauQklJgVaF2uBEh/Rv+oHMZk8Cz2Yp
         OWMgqhjRnDnrBP3lY687p5gItmqUZda8/0GM0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716455116; x=1717059916;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version
         :x-beenthere:x-gm-message-state:sender:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7SdPqh3dsl8sj5+wHDSahaDcL6OoQEhjU/OCgi478bk=;
        b=RnrC9H+FTb8pfKmtMEGRXlJ6ERWS7frrPoUKupj/3hgc4UqtgnqmUwvUSz+WbpJ62o
         gQMdcLnKWygKdywbykywnKWPaHvNEwweZ/wcXMSHhmRBA0LS4rR3ci1ic9F6xoEBYfqm
         40+rG/yLa20+SMjERnVXJ0PsPG9JUcdGw1IfYQRGz96rbVFf4ArHHWjtR7ueSJ4Eg89M
         lOzJV1+pssg5CYM/1uCracmqYJ1dFMwSADQBbP7FanxfSW9Q3Fgwukks6EX5y5j2/0WK
         kyV3j6VmQumL7ZiaJU7nrZRuIHsdfC/GfQ8HJaJh93eCQOatBjVRASwhR1L4XWzLMcVt
         MPvQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXm1Tp+Xh14kSYbm0yGO6x8q5Ec9A6VZ/cnOHMzi19uDAWkXWGvF4Co5AMBSPYKbo5OViZeTsiqX4kFMrJ1OL1roAJagJn1ah+l
X-Gm-Message-State: AOJu0YyxQsYH2WH6TXTSB2x5YZT++VVcTM4xoD+3Qz8Oyoe9TbuHKr5z
	NwCAfNE3EdWfx2uK/vEg1WaYEd2pt5C1WBVSRXnRbSiD17eMPfR6kT3ZZC+ZEl4=
X-Google-Smtp-Source: AGHT+IHjUmG8WVcDhLgkEf8FHGkEUFx/0pq5sWYWkI+0j9e8ApHCaMw700yNcXltNEpFF5wadAOwlw==
X-Received: by 2002:a05:6214:5248:b0:6a3:294f:554a with SMTP id 6a1803df08f44-6ab8f64ae2bmr34102836d6.32.1716455115758;
        Thu, 23 May 2024 02:05:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:19cb:b0:69b:a44:bb68 with SMTP id
 6a1803df08f44-6ab7c8ee8abls2751506d6.0.-pod-prod-00-us; Thu, 23 May 2024
 02:05:15 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVS4oPRN0CtdRoTJEVfdZuWG8Q6ScXJwnwQ/7ZjdnULNVFRrmIVDhBfA3BhGYH6fqyfKRgnapYS0LulXhsogDiM/LODo1r/ffZiu588sDp37wzgSu8=
X-Received: by 2002:a05:6122:3285:b0:4da:c69c:f5b2 with SMTP id 71dfb90a1353d-4e4e4b8c246mr1138031e0c.2.1716455114804;
        Thu, 23 May 2024 02:05:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716455114; cv=none;
        d=google.com; s=arc-20160816;
        b=G3Go925+Eyevrgbo9KrnfpEOd5aSfTue4g/4droadPpN3yvwSA4rR+RYsyqaBX2lrB
         9hZy81Rr0Ux3ZsRA3XQ2OFV9qPQe2O/TCFRqBznlXbW8Oral/GnhJLMvSTJWsha9nYC8
         sZCtH05vQWZo6bra61hkdFVOPH+VYeJL/DoQfG3/H6X/AFxS3yP9qdk2lSRLldhTSlN5
         6/J9dBMm+nFSpvAikhYbpcwhmviTldm3xLA5t+FGKmXHgm6xxhNeq7kSvfZV7+gAqQs8
         bBn27DC/w0yhvsgwnd1fh3Q1z4GWXkY9kh1+kM8uhDUzZvls7FuEskLpHfv7aEwSwj+o
         NRRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JkUrr0M20haj0Fst9GXw/wBHTlpqSjfCpXw604RJDXg=;
        fh=U2gyHwRBZNVdoD/dd1jIkGt3g0AeJGRHR+BvNEjPRp4=;
        b=t3KhDUSmDHVG3BYzO++RHENNQ87qtVl1dHiiNkgeTIWukfr/OPaj5HiJS5sBT8SB46
         tamDzlAPVntUNd5Y7L1aKvxNsh37bsDy/q0idJNCTaw65F5MBK9Wq4HJzxsPEdP5I2KP
         VlvYKAlPmcA24L1ZSyYuv+UlVILhnvpN00dTctrnEUl+RLSdZmTSaVXharY2+rZrW9/V
         aK9Eh+vUfgsBjB25RnyL24pLixuKV5s5xw6pvK3x5fhwAameSJ3bZbvQGcNY4JtTK7aC
         nmM7DaKyEO38gvUoh22Y5KocvqnSMWLJvdmqc33sJGG42Jpp0mmw36dpSL9W7RvDgKZl
         lLbQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=WPNSYU07;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a1e0cc1a2514c-803269255f4sor1007117241.4.2024.05.23.02.05.14
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 23 May 2024 02:05:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCX2ndQA0Rgza2Ll//sz1Qr/9xvq9T/q+mQiucmE9MAlGL7eSwjNVKJb+I+lv+iYIRm0Ud7AfeEx7ivuaikHyR73Ev5hDskBeK7FgPeWkqaNX/jt07I=
X-Received: by 2002:a05:6122:3285:b0:4da:c69c:f5b2 with SMTP id
 71dfb90a1353d-4e4e4b8c246mr1138024e0c.2.1716455114440; Thu, 23 May 2024
 02:05:14 -0700 (PDT)
MIME-Version: 1.0
References: <20240523072242.787164-1-shichaorai@gmail.com> <a218cac3-9d9d-4ac9-8ea3-0ea9822b2261@suse.com>
In-Reply-To: <a218cac3-9d9d-4ac9-8ea3-0ea9822b2261@suse.com>
From: shichao lai <shichaorai@gmail.com>
Date: Thu, 23 May 2024 17:05:03 +0800
Message-ID: <CACjpba4=AC5LP7dOAg97g8_7n_dEbHjeVPE-5JRmfyoF4MDXCQ@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] Check whether divisor is non-zero before division
To: Oliver Neukum <oneukum@suse.com>, stern@rowland.harvard.edu, gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-kernel@vger.kernel.org, xingwei lee <xrivendell7@gmail.com>, 
	yue sun <samsun1006219@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000005e85c506191b5969"
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=WPNSYU07;       spf=pass
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

--0000000000005e85c506191b5969
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
I reviewed the code. Your suggestions can actually avoid repeated checks.
And there is also such a problem in alauda_write_lba().
I am a beginner at making patches. May I commit a patch again which fixes
both issues you mentioned?

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CACjpba4%3DAC5LP7dOAg97g8_7n_dEbHjeV=
PE-5JRmfyoF4MDXCQ%40mail.gmail.com.

--0000000000005e85c506191b5969
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
ote><div><br></div><div>Thanks for the helpful tip!</div><div>I reviewed th=
e code. Your=C2=A0suggestions can actually avoid repeated checks.=C2=A0</di=
v><div>And there is also such a problem in alauda_write_lba().</div><div>I =
am a beginner at making patches. May I commit a patch again which=C2=A0fixe=
s both=C2=A0issues you mentioned?=C2=A0</div></div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;USB Mass Storage on Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:usb-storage+unsubscribe@lists.one-eyed-alien.net"=
>usb-storage+unsubscribe@lists.one-eyed-alien.net</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CACjpba4%3DAC5LP7dOAg97g8=
_7n_dEbHjeVPE-5JRmfyoF4MDXCQ%40mail.gmail.com?utm_medium=3Demail&utm_source=
=3Dfooter">https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb=
-storage/CACjpba4%3DAC5LP7dOAg97g8_7n_dEbHjeVPE-5JRmfyoF4MDXCQ%40mail.gmail=
.com</a>.<br />

--0000000000005e85c506191b5969--
