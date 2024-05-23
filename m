Return-Path: <usb-storage+bncBC5J7HGFV4DBBEURXSZAMGQEOIOQ24Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf47.google.com (mail-qv1-xf47.google.com [IPv6:2607:f8b0:4864:20::f47])
	by mail.lfdr.de (Postfix) with ESMTPS id 493D98CCECF
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 11:12:51 +0200 (CEST)
Received: by mail-qv1-xf47.google.com with SMTP id 6a1803df08f44-6ab89a3c01fsf14458706d6.3
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 02:12:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716455570; cv=pass;
        d=google.com; s=arc-20160816;
        b=NMSaoI88PqkXEm3LleiCiTJRHsJPrNKq680hx0IHUE66lNfjmLsVSdFsT6C767l0WZ
         jvLQHoXMQBnqHa0GCnEKlDzkmNDkLzyLJEj4/jDLM0/qK5t6CIr9BSm43VyE4BMlw5YJ
         G9J8Qz37+aG13SSmIbt+0J1ez94c0F3C3uAsCxucn7SrShuNivA4sr+btP34ZGALbjlC
         QYLwVqtuEe6UbL+KatnGVaRU3E2i8w9lLXVGFXdxuZ39k5klz7JxJccipZkc1dDnx5Ow
         VdwB9uOZiciS/z2fAo8a0hFgM5J1tWvNgi0aOwZrva5wcBeAdn1mW7cBFqWN8vTGHIbf
         T0fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=8RWqSBfBTK/70g7vVvt0khleOm70+V65wJVn/vT1hbg=;
        fh=pSn0uh2uXOeWyl6pWJpUQIlAwb7+Sjb01iomynTtSx0=;
        b=hRa/hDOatqbCCErOS92/5VnilnkEz5MK6EoQXSgav+1LKk1KySdD2PS5l+kZ9giRfa
         UpbgvxlO6J4/Hq0bY1t64nmR2Nq3BZmSt/9wHNhvoHMnhkxjzepPwrBRYRDTYpgWAKch
         8+S8slbItJI6JRBa4GTms2dCfnQuN/uZHZYY0XRBT6dlOKtHIoRv1fhMcU77Eo88tuL6
         yYlmBI/CoAwxWIz6xoJJAhxZcAcjVFZxb4aZ0qAMjRd24joLKUFTPBSgtuqXdXChyAhR
         UpSwSWLvgUaqiQhAMKor/wHjUTGq3jdFjj2XmmdYEqo15RfsO5RHvipLOIVTB9CyWb1T
         q+aQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=NVyRsimn;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716455570; x=1717060370; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8RWqSBfBTK/70g7vVvt0khleOm70+V65wJVn/vT1hbg=;
        b=fv72a1Q+IjrSmTGpaK/ST34RqXKwdKEHRNXQzTiCTPoppNrvsskK5KMZwT/jNv+z/f
         4TzMEoA32XnTAQE0OurBQiysuBFrich8XfOZTjPmT9glI4FQqKudnHbNnHxSLLqMG7KG
         ewquL6DeE9mPEHpZqywVzUQE5pFmorJ/Kjwoc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716455570; x=1717060370;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=8RWqSBfBTK/70g7vVvt0khleOm70+V65wJVn/vT1hbg=;
        b=MZmUlGNKM3rvdFP9QAfHQ7WPKNWDxWRm6ruQDltOXAz1PsDcf0FsWo77ibY+4c3qPg
         VOcTLxWezdsxHxxqP7yb58qseWis6Orp0cB/DyRJpjPV+T00Eb7LV9o4p/4z7UDEOxB8
         hNDHyTqIaBNAd3988uQNRF/MCWSVujYLAiy/7kcKaJsy6HWpjTHH271pm0u+x8MTkgfQ
         +I3hPW78wKkw67JvZ7BH4VTxjRdGYmY522zsnUHShsnQb8wlC/5fkVSOx7kbvGq6Py+P
         rC8n09KmTCfV63mXjeanfCcXzph99nk+0feXPzZnEYG74B1DB17STPTpUQVvyRGHaAOZ
         bUDg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXLoE3y2a65qyD04RW6ml7quol9W208bv26DSk5Jhk4jClvKHodbt8anB6QewfIEgGRmcnuPXNPMbF/f+w/gljakcxdIf04UECc
X-Gm-Message-State: AOJu0YxgMVqrugsowVw/aW0BOXeaQWbvgQE3B70LvRw/KKWxwSMkizlv
	d/kBazBBmSRvEjAszlC0huE/Z+hhRcNkPGa8tXJ2+cm8J5o8/rGqOebvJ6S4EdU=
X-Google-Smtp-Source: AGHT+IHbtwOjC5iwSsqHQch9mgqGlFG/v5PYeZz/VERGDgpckaFeoNl3MIPPCN0IHCryDOn0AyDRgg==
X-Received: by 2002:a05:6214:318b:b0:6ab:6fad:c713 with SMTP id 6a1803df08f44-6ab7f55feddmr48313316d6.36.1716455570250;
        Thu, 23 May 2024 02:12:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2402:b0:6ab:1eef:dd62 with SMTP id
 6a1803df08f44-6ab1eff22fels67856886d6.2.-pod-prod-07-us; Thu, 23 May 2024
 02:12:49 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCWrvRjTFweymPWyoL70Jnjp2xmyBKgNSDP9vmoO0LkgoZ+9ERwQH89iO1du94G1CWflu5uPZ7cXu68JmdpePMGgfib5Fr39I8rDA/AgZXq3EwTczLY=
X-Received: by 2002:a05:6102:6cc:b0:47c:2894:cb01 with SMTP id ada2fe7eead31-4890574e826mr4847025137.3.1716455569316;
        Thu, 23 May 2024 02:12:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716455569; cv=none;
        d=google.com; s=arc-20160816;
        b=VJtDOJNctmXqkyJwkL2CWOcP2Ei/pppkNfEYxpudvw5bvOUZ0Y/hKguBIVQj6ZOpWK
         TR8FjImyn4iMSa5YDIm88HtK+gwQmmqW439x/Z8DL2gkSmyPn1VFIUSZmyN9usLw+frh
         fJpNfuQciTPR5uVj2s99swWM7XrTK5aAb+gUPucawSFkXcKj1BgYHqzpMw99BBFBe0xo
         S5K1JCDEC1qUWaPcdPOGsWhJPbmWbLVXLC+tZ+fPWV0ZBT/6B9KowBGTmwTBPFuSGrpr
         4kbvXspuzKUHsSp1hNW9EBdt+IBxisOq3ioE7MHM5Qh2LUFMwJ2oj16rtMqlaTpmU7Ly
         vMpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=hTaMDQBBtugLbt3IOXjZ4RX64GEhtWIXoKX3TZUNq7g=;
        fh=Zn2aXOulOgfa/UdkDCF4Iun9QIgjOAdRM8Sy/sZwQoA=;
        b=dgE/uWmd3zPhxepEL/VYyPiP5Ei1JIMnSlNlQ3eUhvtL8La7ysTCkW3jjxXFTv0iZP
         q0aDSc0eq1bdmCk9yaF1RvI6a8SuxbX9yyRysD+4AO8fyuR5GCUaR55F3Pi7lz6DuLU/
         58NhSvxKRJUjnuSHS/Dd7oR59+WpfK2+YIdYOGEM417762LUNpQBEI6zD+hQjM0zDdLR
         DVyJzPC6/2sGcTsUz2afdKCemyoTHod3e728n1b7aO3HGR+IRJx66PvR+qIZzLjc7ggN
         un/+JaySe5MSme57Uwd089bDAhwKRnB4QsTj4NBi6lRLN8rAXMj171xLIGnXVL3gjCDT
         WsKw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20230601 header.b=NVyRsimn;
       spf=pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) smtp.mailfrom=shichaorai@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id a1e0cc1a2514c-8031d898f07sor1210089241.8.2024.05.23.02.12.49
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 23 May 2024 02:12:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of shichaorai@gmail.com designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCUX4QF+XYgtMMhpOm/XO1ZeUtITHcxu6NlCK+68pvhLuIm/MEV4fhPoeGwggJs+VVosx4oyPHUZH2cqT/MKe5Xm1ABoNpq5jgaoYV9Bm0tGMlxh0vg=
X-Received: by 2002:a05:6102:c01:b0:47e:f147:ca71 with SMTP id
 ada2fe7eead31-4890a2c6a3cmr4831374137.19.1716455567392; Thu, 23 May 2024
 02:12:47 -0700 (PDT)
MIME-Version: 1.0
References: <20240523072242.787164-1-shichaorai@gmail.com> <a218cac3-9d9d-4ac9-8ea3-0ea9822b2261@suse.com>
In-Reply-To: <a218cac3-9d9d-4ac9-8ea3-0ea9822b2261@suse.com>
From: shichao lai <shichaorai@gmail.com>
Date: Thu, 23 May 2024 17:12:36 +0800
Message-ID: <CACjpba7yh5Soe_Pr7D3SeTjjqzQB9q=nThaYRGAZu+EvaLfxfw@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] Check whether divisor is non-zero before division
To: Oliver Neukum <oneukum@suse.com>, stern@rowland.harvard.edu, gregkh@linuxfoundation.org
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net, 
	linux-kernel@vger.kernel.org, xingwei lee <xrivendell7@gmail.com>, 
	yue sun <samsun1006219@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: shichaorai@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20230601 header.b=NVyRsimn;       spf=pass
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

On Thu, May 23, 2024 at 4:18=E2=80=AFPM Oliver Neukum <oneukum@suse.com> wr=
ote:
>
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
> > @@ -947,6 +947,8 @@ static int alauda_read_data(struct us_data *us, uns=
igned long address,
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


Thanks for the helpful tip!
I reviewed the code. Your suggestions can actually avoid repeated checks.
And there is also such a problem in alauda_write_lba().
I am a beginner at making patches. May I commit a patch again which
fixes both issues you mentioned?

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CACjpba7yh5Soe_Pr7D3SeTjjqzQB9q%3DnT=
haYRGAZu%2BEvaLfxfw%40mail.gmail.com.
