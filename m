Return-Path: <usb-storage+bncBCUJ7YGL3QFBBX6FXOZAMGQEDVBHHKI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x547.google.com (mail-pg1-x547.google.com [IPv6:2607:f8b0:4864:20::547])
	by mail.lfdr.de (Postfix) with ESMTPS id 953B58CCC48
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 08:32:01 +0200 (CEST)
Received: by mail-pg1-x547.google.com with SMTP id 41be03b00d2f7-6576ea645casf628801a12.1
        for <lists+usb-storage@lfdr.de>; Wed, 22 May 2024 23:32:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716445920; cv=pass;
        d=google.com; s=arc-20160816;
        b=VNnlhKggFEA+ZaeUIVQBkTdccywDT3nnNB9HB15fnNbg8wXn+eJIBJ7CJHGm9+gQMq
         qBbHxMvpzYNpweaZxmIMRAu0kEpmyJYuoG6R/siZsv1Q7PmDcDL3TTU9j49Epvi2sct5
         Ex8JmwCUmhtd/PrmzF9TerfKrxv5itoJrHof2IRVgmCZPJkdz/8ZUDkMgdVKSUJ5w4lJ
         wxFCMjAWx+jDnGCBlUyZNA8S+3KJmnWkOOIO6/Ga8lBa+aV+RNYZk5IHl9PN90jWM8yo
         ojOzKS1IRgOWZZ0Hd18Cy6NAjsrStrGndXZpSv932r3RoRc8iiNAlb9Q+5JUu1AqArQL
         aAQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=AdNFnKamkZRgOSY/Uz+e7Z0kooTThsUyiSkapDxpVHE=;
        fh=dKmf8kb6svfGpx08QeYxvGiFCgJygivQnLoaCEN/MzQ=;
        b=JFG9xLaqPdg3DNbLi14UDzgMjVAMObIlWnb2oOQtDpKwf3yO7HoZ96a56nQ2LRjge+
         /9GQuGEeA1dhZCgYxKQ3ZzdBF+MK3T+BDODceEMYMfCiTRZY+nn7s6Dtwvk2HQShwfv/
         E1Ysuprs/Ns00gm7bJc52+8N1M1vUEAAegASZDLiH7QQwPTORfc8QiDqJNMTvStFGckC
         cGJyfc5kDESCSLwOVnZ7DTwoi46tHefbHzuVPbDD/k7zA+1rcAhK14Mr7++aFnoS8+V6
         ZJ5WhHePzRkD4XBNmG7xuHlxX8Dacj+pmAgwDeuOtggrxGWGe1DBsL4vMGPSIVwaoT/Y
         cSHA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Bl8JF7RO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716445920; x=1717050720; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=AdNFnKamkZRgOSY/Uz+e7Z0kooTThsUyiSkapDxpVHE=;
        b=OpCx+34ofxjOf+G/EVJukeq5/4ca9VGkSPVGVzJEmca0OTqC2pOPcEq7AvifG1RhUP
         aJeduYxiMkDsFjEq7IWeoGKj2y79pyFeWVcScAUPwxkz2Y/AuhfaO0hEn4OPosxpJ+RM
         sLKJgzO/KKRy0Oy3K7iqqOwZaSqAfBR8SpdX0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716445920; x=1717050720;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AdNFnKamkZRgOSY/Uz+e7Z0kooTThsUyiSkapDxpVHE=;
        b=D1ZmUCwhoai7An8jXA+NwPXdhDx8cWmpFaCfQmegROA9AoF8akG9bi2VvnLX+sDu+2
         t28SNLXJoBDBG/AC/hSiAbmf6EDJKRxywCFmAcPlrVzlQ5NrC3gHtsFzvZhsuUquKjAO
         l2fL3qjWbKld7OlsYpzZoreDhKpQbxZA9BP2GVQHtMPwz5yQ2wFJCuJ4ukX0fXx0ax1H
         aW9Zz9n7oMXcJ/YXy4qEevuD0SiX1ntYlzPnjwVXqGPjU7j461nKgb35uMLt0qYj5X3Y
         j5PqI0Qme3Vi8mklHQPag71vMB1sRSISyrrYfYYLh/Mb1oryN/DpVdR1fDqIkIgntrx4
         Fy5g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVo0/lKfiKBqjouoCdFUISCBqyClEeRgMqN27cE7RMGQMmukiT7Qsgc1wSvLoeNBg5Buazc90c6B5WpfsoxOY54Hi+Rq7ysMma2
X-Gm-Message-State: AOJu0YzV09LaT3Lkw6K9GegGus0U0FXzqwalahoNySNmLIs6cBhKEmzi
	W3UwN3NbCPdsn64p24YWTtMWy71CL1GLZHIByhfRyMNRRY9O8UtuBIXxy18WxjQ=
X-Google-Smtp-Source: AGHT+IEzpliti5BhMfvMuksJZUbbsDiDcVjYzz3dBSPudaFAR57agg6xgvoAFmo1+xgh2AxmliXVYw==
X-Received: by 2002:a05:6a21:1f04:b0:1b1:d400:1965 with SMTP id adf61e73a8af0-1b1f8ae00eemr3825159637.50.1716445919858;
        Wed, 22 May 2024 23:31:59 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90a:12c1:b0:2b6:20a0:447f with SMTP id
 98e67ed59e1d1-2b6624ad60els6971951a91.2.-pod-prod-04-us; Wed, 22 May 2024
 23:31:59 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXhJmYCSMXdXzKcFHeMe6bEunj0TN4eKqULVf2ueg0/jOVuLn+jk/bmRIB8NtAsF9ocUupY7MozvUWTRGn+6A2V9jBxWX8KevQAvJZ6/Ure6jTMLyU=
X-Received: by 2002:a17:90a:a906:b0:2b4:e4d2:e6f0 with SMTP id 98e67ed59e1d1-2bd9f5c36femr3997395a91.45.1716445918688;
        Wed, 22 May 2024 23:31:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716445918; cv=none;
        d=google.com; s=arc-20160816;
        b=ekn9qDUxYvCIe/ORgY+VPmRMACpOLvdxeraw/il7o7WP+9r//1yrOBo3q7msnX1G+D
         Dn/9HPuombMSY7SYCR9Fp532AKbCEfUwdD/UcoIdtQx5lgMZK9wb+0UiDy5GDjXFlLTY
         Uy8TyLbsRfg6U+AwIh1Q8+uRQWLct/4MIkP4Q4XL1ScL6XRS+X8cpq12CE4xmVxqrRkt
         0U+iEu9qI+wVIAV5YV1cTkhq1jXmJDkIIa2D4xxPMOk+McFS1lBXAVMLLzOXxzXriIxr
         Yjp8WLEyD+hSYdEkFzYJmd3FtVoWO5/yz6s6vQg9Faj4eFEhe65Q5lYhgxvSMrIEQjPs
         aBJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=Hg7KsI4+yjCYzblT3og7FuDs9M5bEKNAbg7gdDS1SdY=;
        fh=W3CtdeGGCHP8JS0pQ+YOGoZaf5UniFfF5rvgC83SXcQ=;
        b=oPV/HCUN3+hooWl/5SwXsY1+UIlmrB0VJHnByO4EUTz5vaVMPuaEDEeJAavNpWDx3f
         joOOJAlr0z4ctJO3hKup1lQ3bKL173/LQaa+O5zA6ZvsgILmy9iAf5gx6rUvqWsGURsb
         +bOgVrwkWuuUTtLpMlG4neuw8dSs0Qt8W2I5zALGAsv7bq6FGWAIaHb8WNyvBo+iOr6+
         rGBAhNGvulXPWUVwEJS+4t5GPtaKM7/LtNLgLuccEEnfOa1PqoOnqb0ZH7LRgHQNRvW9
         ovdkSfb64UttlpLOd8UsLZDefE+UJ3uE4cPJAwYmmXIkLrfm65BME7/wnZxLhMLqDG8p
         qaLA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Bl8JF7RO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from sin.source.kernel.org (sin.source.kernel.org. [2604:1380:40e1:4800::1])
        by mx.google.com with ESMTPS id 98e67ed59e1d1-2bdd9f45767si356482a91.149.2024.05.22.23.31.58
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 May 2024 23:31:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:40e1:4800::1 as permitted sender) client-ip=2604:1380:40e1:4800::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 3FE7CCE13B2;
	Thu, 23 May 2024 06:31:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A365BC2BD10;
	Thu, 23 May 2024 06:31:55 +0000 (UTC)
Date: Thu, 23 May 2024 08:31:53 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Shichao Lai <phyhac@gmail.com>
Cc: Alan Stern <stern@rowland.harvard.edu>, linux-usb@vger.kernel.org,
	usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
	syzkaller@googlegroups.com
Subject: [usb-storage] Re: divide error in alauda_transport
Message-ID: <2024052315-dwelled-unframed-db34@gregkh>
References: <CAEk6kZszgHVYN8r-AsPw9YtGGf459j0uDMYLdOoTixhE3YJCKw@mail.gmail.com>
 <2024052224-motion-perish-82cd@gregkh>
 <CAEk6kZt4qcV0xUxHFRp3DTdZ0f_3fLE0q4e_AWHGyjba=19g9g@mail.gmail.com>
 <CAEk6kZsgEJNSmFFe-tdA+RhM=+Pjm=JvHiNJ4QjZONPXHt-gjw@mail.gmail.com>
 <2024052242-hunter-exception-930c@gregkh>
 <CAEk6kZsLqJ5RbWYMrcbB+LkRq8jzRgTm3F8kq8FKB14y8ST2GQ@mail.gmail.com>
 <b82e133a-62a3-4f23-9803-1af79b06b8f4@rowland.harvard.edu>
 <CAEk6kZsgMscqmSgsvt9d=z7e69ZGuJAfLuYOV7E6jXJKr+n3Pg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAEk6kZsgMscqmSgsvt9d=z7e69ZGuJAfLuYOV7E6jXJKr+n3Pg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=Bl8JF7RO;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:40e1:4800::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, May 23, 2024 at 11:26:48AM +0800, Shichao Lai wrote:
> =E5=9C=A82024=E5=B9=B45=E6=9C=8823=E6=97=A5=E6=98=9F=E6=9C=9F=E5=9B=9B UT=
C+8 03:59:30<Alan Stern> =E5=86=99=E9=81=93=EF=BC=9A
>=20
> > On Wed, May 22, 2024 at 06:01:57PM +0800, Shichao Lai wrote:
> > > Thanks for your patience. I am a beginner and initially attempted to
> > report
> > > errors to the community.
> > > However, I have just discovered that the issue mentioned above has
> > already
> > > been proposed in the previous three months of the article, and there =
is
> > an
> > > ongoing discussion.
> >
> > To call the discussion "ongoing" is optimistic. There hasn't been any
> > reply to my last post, which was made on March 17, more than two months
> > ago.
> >
> > Maybe you can carry out the tests I described in that post. That
> > would be a big help.
> >
> > Alan Stern
> >
> > > I think this post can be closed later.
> > >
> > > https://groups.google.com/g/syzkaller-bugs/c/m8CuxSpLKoQ/m/JfUy1xGnAw=
AJ
> > >
> > > Greg Kroah-Hartman <gre...@linuxfoundation.org
> > <https://groups.google.com/>> =E4=BA=8E2024=E5=B9=B45=E6=9C=8822=E6=97=
=A5=E5=91=A8=E4=B8=89 16:59=E5=86=99=E9=81=93=EF=BC=9A
> > >
> > > > On Wed, May 22, 2024 at 04:22:18PM +0800, Shichao Lai wrote:
> > > > > patch like this:
> > > > > ```c
> > > > > while (sectors > 0) {
> > > > > if (!uzonesize) {
> > > > > return USB_STOR_TRANSPORT_ERROR;
> > > > > }
> > > > > unsigned int zone =3D lba / uzonesize; /* integer division */
> > > > > unsigned int lba_offset =3D lba - (zone * uzonesize);
> > > > > unsigned int pages;
> > > > > ```
> > > >
> > > > Please submit this properly and we will be glad to review it.
> > > >
> > > > thanks,
> > > >
> > > > greg k-h
> > > >
>=20
>=20
>=20
> Hello Dear Maintainer!
> I found the same divide error yestoday as
> https://groups.google.com/g/syzkaller-bugs/c/m8CuxSpLKoQ
> And I add a patch before drivers/usb/storage/alauda.c:950 in
> alauda_read_data().
> The true cause of this error is that the variable uzonesize may be set to=
 0.
> Here is my patch:
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=20
> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> index 115f05a6201a..fb54af37efd5 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -947,6 +947,9 @@ static int alauda_read_data(struct us_data *us,
> unsigned long address,
>         sg =3D NULL;
>=20
>         while (sectors > 0) {
> +               if (!uzonesize) {
> +                       return USB_STOR_TRANSPORT_ERROR;
> +               }
>                 unsigned int zone =3D lba / uzonesize; /* integer divisio=
n */
>                 unsigned int lba_offset =3D lba - (zone * uzonesize);
>                 unsigned int pages;
>=20


Great! Can you turn this into a real patch and send it to us so that we
can apply it properly?  Directions for how to do so are in the
Documentation/process/submitting_patches file.

thanks,

greg k-h

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/2024052315-dwelled-unframed-db34%40g=
regkh.
