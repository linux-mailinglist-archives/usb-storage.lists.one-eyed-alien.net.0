Return-Path: <usb-storage+bncBD6LRVPZ6YGRBJNBWKHAMGQE3AXLEVQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id B84FB481537
	for <lists+usb-storage@lfdr.de>; Wed, 29 Dec 2021 17:45:26 +0100 (CET)
Received: by mail-qk1-x745.google.com with SMTP id t8-20020a05620a0b0800b004764cabb1dasf11398884qkg.12
        for <lists+usb-storage@lfdr.de>; Wed, 29 Dec 2021 08:45:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1640796325; cv=pass;
        d=google.com; s=arc-20160816;
        b=oQjZb3wWvOj+GfALKXKxOJeylI1SjFaB5LtFK6xIcjIgV8GyjzQcdomhDJWTsYhhAt
         iePQJlnepLcXFnwqKb0PDCSiQEO3h8EwFT2hO1jpvy31yrNM2eqqnpgHFN8FFbbmIf7Z
         y5dBHAexW/d98p9B0JeIo3CnzC0qf84wUK8Cynh/DEEZTFsrSHBo7PazLw0ZY7aOCLww
         WJD9995/BlIiLc78ikD6kRVoS4H8liqIWSTRWgG/i8Z11TskUK6IWeW9n8EYVuA7Yu9k
         sj9GbxBw5vEvct/snjU/W74ZLrR/PNoNKbKFQehtgNXuBujXclHF8/IzqzLEHIioCTDn
         313w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=W33mfNRu6o4ymI4sOtCO0jFdzzmKD8pyVkxzTk922Uw=;
        b=Zww9RlcyxZVEN0qvQD8ajrzKreDcfM/CxYA1hh6SXlvmZ0HDmQRVdzcUlUmdjnMvtB
         fF8dco7a0VzfH3f8Asv+QCcHPVs/dD2R1gGPXtTLJvyK3zMP68gEXMeF4yMoTbMWfm66
         kZM5OZLa8QoaDtp2rAztpG85wlsIe4KaytUWD44anZrBxZ7fAjWSrSA7bJqeTQ3AIeHE
         w7ODtncuanM0q2cUPfNfBraqx/TXmb/f9iE82DFMy2dLgSLtAJ340Gu8QQNWYuyTSEgU
         fCruxrarUAh6rcCzqLDCmsCLwDqOFJbVQREiXLwJcq/8yTRuFNcB0mnXYo6FAJq8oqeG
         8kCA==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+61c4c1a2@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+61c4c1a2@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W33mfNRu6o4ymI4sOtCO0jFdzzmKD8pyVkxzTk922Uw=;
        b=exQ4XLu2n3lyvpxRwIXddeZl3p7EzEjD2Rv2qxo1Ej6YC3OfYhasBjXEmj3TMKxAnt
         IwMumdjf1g11oe6IUSm2nwYAzZVeiHXGN5o/5eyp4pBAFyPaSFWggOFEpNPPV/HGfD1X
         6hdUYBkkkuNosbT3zA/W7DKptikeHWDr2q1eY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W33mfNRu6o4ymI4sOtCO0jFdzzmKD8pyVkxzTk922Uw=;
        b=ytM4ktqY+bae5WgRyQ8qJN4hpCS3O0Lx2j+Oc2RTYYTpUgK9On21Djdd3n7Q+isjur
         NEHg1jNzyTI0YnzjrsKTYOvegygk4il/H8+Yu8O5IQmmPfkdjmBRzI3LUeNPBqCZAw7y
         /5dfFadh/dE3APQYazG4ZXCHidTdlIJiHCe7lx2HLFMEQB3D0I6JQ11VZgC8M1TnE3u+
         6jVdqkyb6b+PnIc+a5xBALv5hTY+EkjcON2EqOvrt7SivNlsgGT0GKR3FOIVQAyj/Ne0
         w32EH+En7MM0gCCzlOJjw4hK2ryYtwhj0CQI8DLjP8u/Kp1ykUOQI6DicqGSMvVQEBE1
         UJrw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532/qpvRLyCz2bpTXRFGkO3ux69RXxVyVyVn/KoPgAlInEdBP4cd
	SNHofofBFgO/nbCTrqvJ+cPvug==
X-Google-Smtp-Source: ABdhPJzUbzQkp1UQuBVdnyVKHKg4JH12ye8GLx4tUTexvMmAJ0L+IK8MyFWcOC6IelnWbKgvjAGdhg==
X-Received: by 2002:a05:622a:1818:: with SMTP id t24mr22268847qtc.169.1640796325756;
        Wed, 29 Dec 2021 08:45:25 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:622a:1481:: with SMTP id t1ls10259033qtx.10.gmail; Wed,
 29 Dec 2021 08:45:25 -0800 (PST)
X-Received: by 2002:ac8:5fc3:: with SMTP id k3mr23563171qta.34.1640796325123;
        Wed, 29 Dec 2021 08:45:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1640796325; cv=none;
        d=google.com; s=arc-20160816;
        b=d4pP5iVVms8JrluTNU1/bhaMNs/0IrtApQQGdUmf5HRVsBCjLvn4o6Orqc5IPlJY3I
         We9+VXX6ONraPGLd8353bIVqPZIY5+SYuOz0hFM+H1RXmzEHSptwAQyXBpdBqx5ZsINC
         siMjrXLtOJeiOdPgYfnaDnEmW5pDM4h6s8s2fWaebn+W2S/1x8tj1w9zfj96YDlvnQ2S
         6v/YtdzQWhTufC4CJ/XBN2VxqBd2u1rSv5wmirI8MOqAoZVU6R9/Xlm5nBxqwcE2onHM
         bMX9bjwVUKpOfwFVlOXAhKwYEIGgNF2vYY7rMINwUH60REPhRaTpIWxZaoybxopxwtKk
         HnWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=qpQSdiZCAISXNIcPYAgtBPHjjribT4NqFpEBelT8a68=;
        b=ImnM419m7iX1TmG4hefkaWDgDKSh/B/XOa0AR/wDdhSgQ1Gied3Ode+D0CPBTKiTAK
         kjyMANeiG5e7XVFoAtfTM8TRNarsiWYC8RDSSC5XP21WlTtrEEGWHKITMFHnm5E3FmvA
         /khKfz1JHMyhvja9vH8PMZ2qRMVBtQ+mfh5oeq8Y2QTVwOf60omL6fCPS9j0kUT1IvSo
         YvLrHCeNBTfujVgmQuVrn/8iELLF6uc0paLJRNjGjRG/IlfYJaL6Lk+b5NtXeUnQB/eB
         P67phQQ4t8Y8OOqUQuDC+wxiV3Sj0Pfxkli0CVZMmM4iUUPCq5+pyEMh+RklIdQ21KHM
         Ge+w==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+61c4c1a2@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+61c4c1a2@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id r3si11307844qvc.72.2021.12.29.08.45.25
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 29 Dec 2021 08:45:25 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+61c4c1a2@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 1096430 invoked by uid 1000); 29 Dec 2021 11:45:24 -0500
Date: Wed, 29 Dec 2021 11:45:24 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: glider@google.com, gregkh@linuxfoundation.org,
  linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
  syzkaller-bugs@googlegroups.com, usb-storage@lists.one-eyed-alien.net,
  Kernel Janitors <kernel-janitors@vger.kernel.org>
Subject: [usb-storage] Re: KMSAN: uninit-value in alauda_check_media
Message-ID: <YcyQpJGJRxsTKesd@rowland.harvard.edu>
References: <0000000000007d25ff059457342d@google.com>
 <f78b974a-e36b-6d23-6977-fdf50c05600b@wanadoo.fr>
 <YcuUX6BVo+HA1TcI@rowland.harvard.edu>
 <156fb7f1-cf12-e6cb-63c0-5c0413ce2b2e@wanadoo.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <156fb7f1-cf12-e6cb-63c0-5c0413ce2b2e@wanadoo.fr>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+61c4c1a2@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+61c4c1a2@netrider.rowland.org
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

On Wed, Dec 29, 2021 at 10:16:22AM +0100, Christophe JAILLET wrote:
> Le 28/12/2021 =C3=A0 23:49, Alan Stern a =C3=A9crit=C2=A0:
> > On Tue, Dec 28, 2021 at 08:47:15AM +0100, Christophe JAILLET wrote:
> > > Hi,
> > >=20
> > > (2nd try - text only format - sorry for the noise)
> > >=20
> > >=20
> > > first try to use syzbot. I hope I do it right.
> > > Discussion about the syz report can be found at
> > > https://lore.kernel.org/linux-kernel/0000000000007d25ff059457342d@goo=
gle.com/
> > >=20
> > > This patch only test if alauda_get_media_status() (and its embedded
> > > usb_stor_ctrl_transfer()) before using the data.
> > > In case of error, it returns USB_STOR_TRANSPORT_ERROR as done elsewhe=
re.
> > >=20
> > > #syz test: git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-n=
ext.git
> > > master
> > >=20
> > > CJ
> > >=20
> >=20
> > > diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alaud=
a.c
> > > index 20b857e97e60..6c486d964911 100644
> > > --- a/drivers/usb/storage/alauda.c
> > > +++ b/drivers/usb/storage/alauda.c
> > > @@ -318,7 +318,8 @@ static int alauda_get_media_status(struct us_data=
 *us, unsigned char *data)
> > >   	rc =3D usb_stor_ctrl_transfer(us, us->recv_ctrl_pipe,
> > >   		command, 0xc0, 0, 1, data, 2);
> > > -	usb_stor_dbg(us, "Media status %02X %02X\n", data[0], data[1]);
> > > +	if (rc =3D=3D USB_STOR_XFER_GOOD)
> > > +		usb_stor_dbg(us, "Media status %02X %02X\n", data[0], data[1]);
> >=20
> > Instead of adding this test, you could initialize data[0] and data[1]
> > to zero before the call to usb_stor_ctrl_transfer.
>=20
> Well, having the test is cleaner, IMHO.
> If usb_stor_ctrl_transfer() fails, a message explaining the reason is
> already generated by the same usb_stor_dbg(). Having an error message
> followed by another one stating that the Media Status is 0x00 0x00 could =
be
> confusing I think.
>=20
> Let me know if you have a real preference for a memset(data, 0, 2).
> If so, I'll add it.
>=20
> >=20
> > >   	return rc;
> > >   }
> > > @@ -453,8 +454,11 @@ static int alauda_check_media(struct us_data *us=
)
> > >   {
> > >   	struct alauda_info *info =3D (struct alauda_info *) us->extra;
> > >   	unsigned char status[2];
> > > +	int rc;
> > > -	alauda_get_media_status(us, status);
> > > +	rc =3D alauda_get_media_status(us, status);
> > > +	if (rc !=3D USB_STOR_TRANSPORT_GOOD)
> > > +		return USB_STOR_TRANSPORT_ERROR;
> > >   	/* Check for no media or door open */
> > >   	if ((status[0] & 0x80) || ((status[0] & 0x1F) =3D=3D 0x10)
> >=20
> > In general this looks fine.  Let us know when you are ready to submit
> > the patch.
>=20
> I was unsure that this patch would get any interest because the driver lo=
oks
> old. That's why I first tried to play with syzbot :)

It is indeed old.  I doubt very many devices of this type are still in=20
use.

> In the syzbot history, you also mentioned that 'unsigned char status[2]'
> should be 'unsigned char *status =3D us->iobuf;'
>=20
> This is more a blind fix for me, but it looks consistent with other place=
s
> that call alauda_get_media_status().
>=20
> So, once you confirm if you prefer my 'if' or a 'memset', I'll resend a
> small serie for fixing both issues.

"if" and "memset" are both acceptable.  You can use either one.

Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/YcyQpJGJRxsTKesd%40rowland.harvard.e=
du.
