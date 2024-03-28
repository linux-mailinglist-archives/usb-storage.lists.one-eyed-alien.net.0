Return-Path: <usb-storage+bncBD6LRVPZ6YGRBRVQS2YAMGQEMR7V64I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oi1-x248.google.com (mail-oi1-x248.google.com [IPv6:2607:f8b0:4864:20::248])
	by mail.lfdr.de (Postfix) with ESMTPS id ED09C8904CC
	for <lists+usb-storage@lfdr.de>; Thu, 28 Mar 2024 17:18:15 +0100 (CET)
Received: by mail-oi1-x248.google.com with SMTP id 5614622812f47-3c3ecbe480esf417288b6e.2
        for <lists+usb-storage@lfdr.de>; Thu, 28 Mar 2024 09:18:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711642694; cv=pass;
        d=google.com; s=arc-20160816;
        b=Kq9FvB3PnI0qP/vzzXow7o0do46k0It6XgP+n7tz/ruTp/VPNah1/JrgIoDbCe8cYW
         2YGCHJfr0VPV9AYzmJBTcDJK1ps9Wrfafi08VWaYC47VgESLyG6HPGwzMs5q0kzrqUxI
         Sd8rVc2bBl3QwWnuR6fL3xmU7+KLAPeJ0ENIIBgkz/e1w9KxYgAovk8RMIIMcE7L6Tqr
         8oFGSs5mV96EqgZ4pp81QhWDvC+Wog5vl7XroKNtYbGPg87jRzKnSErVjmsnkz738Agr
         IgKfdz+QbHiecK3EtCNfKkX5XuJxuX7jMXrbD285chRtbVZm6J0In6IPXkzRWlyBjk8d
         Rbjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=G03K5vVDxbgJBXEOyQ/SzPuoherDyIb7sCafOIHjyRQ=;
        fh=279hz1xiJtmy5xH5vCmWbiqxekxpKFzHVzjXSCAJpco=;
        b=xvnirfdcngcpgg3j7jROU6D8WML9DyDfaodLa2yP3hC4ry+LzvZnmX0QV5fNUHP1gZ
         FXAIrjj0ArGoGCrqtvjIDFsYg4sXc3hrpxYIc1yiTX9pD7g6fy9jYv0TDJ7h/Pq8o5UZ
         r7a/owNFBR16JZJI3CLQj+n7MuaITMurB1EmtA192qKKfivi9eusuYh0D0ZWWv18F4MP
         lwZcuNEgYGsxu1gB/ZHOoCC+U+86j8JrY3WY5EkFbRqny4P/BmnekjMjbdfvmsLYjiXr
         XxxX44xXiVXE7jauKBTCA2rY99nyuVfMZYQXvch0Ua+a94zWSGH7akt9dzV8IAEC1x0C
         wMig==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6603ebb0@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711642694; x=1712247494; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:from:to:cc:subject:date:message-id:reply-to;
        bh=G03K5vVDxbgJBXEOyQ/SzPuoherDyIb7sCafOIHjyRQ=;
        b=bscOMGq2rnv6aS7qw+C2zPOCMN1o9jAQmcJZQIKvY0iPjUTVhjY/nrD2FsHOCPMkx3
         dzMkGq5COYLNrLyKeZdIoZYRGIyZAPLhQ7FAHgPY2bTBfiqWiJ1b1VGKs4Q6XnlhdVTg
         SqQdXZyLuoaSH35jQlGNYRjwOORpcSGq9g6gs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711642694; x=1712247494;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:x-beenthere
         :x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G03K5vVDxbgJBXEOyQ/SzPuoherDyIb7sCafOIHjyRQ=;
        b=eSrOC5qfG1+48L32XVWJMwqgu7ws9Fv2YS8x2DDfMxamViZVJc5aNTg1AGyMtXZFQV
         6pxO6kKpZRebSdVoBTZMbCMDldnloXRR297gMdUVVlgibv2xj1cAIAeXPkf93s1GUsKx
         WoZSNKEuU0+Z9maDAMr598IlIdFSHzMnrMWTBhk+ftmEEGPYGIYKM5FOOfT9T3DS5TVN
         LvbI2CdTlacjOHOMwD6lUspGckdQjDe5CK7ka7kIHrRO54A4Io5HZx4rlRtC1vQRuY4h
         0Kb1C4NX8WprlP2oHItf0/3M3NURZ3bGH4SG4J1dH5nFCp5MheIfp6ufm/1jNs6I0TvL
         CajA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUUqxRKJrRFMowvQIIayens8FxEmRwAKE5zBlVQwb/eBeqrS840ty4/tKfmb8lHSP+I8eTxbUTJfFBJbua5ttDUb2vfW0+Ep2vw
X-Gm-Message-State: AOJu0YxTa5KpK8ZrVQpVOhj9QEncIP6yb45cM9VrG30HUkDAWqsb7Q1W
	QemOjEzPmR9tCLPckISvuxBP91wW3cvqPlAu8iHDhTX8igSYfwF2jVSt1tiz4w8=
X-Google-Smtp-Source: AGHT+IEi98cBQk5xXjABvSOuXq5e+1V6qZMvx5Bq5cvYTdlkmRLp0iC7QQF/pzfrdIaPCJe2RZl4wg==
X-Received: by 2002:a05:6808:23cc:b0:3c3:e0bf:ceb6 with SMTP id bq12-20020a05680823cc00b003c3e0bfceb6mr4208944oib.17.1711642694577;
        Thu, 28 Mar 2024 09:18:14 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ad4:5c8a:0:b0:698:7a54:d877 with SMTP id o10-20020ad45c8a000000b006987a54d877ls849969qvh.2.-pod-prod-05-us;
 Thu, 28 Mar 2024 09:18:13 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVqEFMa/Gn79ZAHZydPJS099nwGU12AAllcT1vGU5x+0edtOPiEl88ceF8Q+JeedRiIPGLdWbBHBd/5TJVAe4ubaxUBaau1jmd1UMmZFOuaexp8gv8=
X-Received: by 2002:a05:6214:d89:b0:68f:dddb:747 with SMTP id e9-20020a0562140d8900b0068fdddb0747mr4110195qve.58.1711642693612;
        Thu, 28 Mar 2024 09:18:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711642693; cv=none;
        d=google.com; s=arc-20160816;
        b=n/wFFd3huiD9DNVlFb1aGfOvLJhXv1ix0fRbEPqhP7ElqQCZeSTsUuX3S3rdkBAxa8
         gR21EOtRBTvxxi0PTpnnEa7UNQY5XTOX4ED9GihIztCEUOzUO3xKwEG8pPNZ0Qp5oy7I
         ow0RTzL3cvsl+Z5c83+HodmsoZo8LCri0JyUgb2l95S0tDL3ExrFOYIFxMIDmpa6FFKS
         3MUJHiSSO1qvHZWxbJhAFyZL3aPkQt0E6/YfgIYxuN0XaMwaJmnD8XyLqjtvc111l+RU
         fZGguweWbQ4zIYCqUQjrj1fjiMf8lv6sk3rxbhsb33gwlN3jBCnNWMVscxq8/98mZobL
         uhuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date;
        bh=Y4wxpIDwbG6xN4Rd6kXVmo84Yvf4H2Cur+wWFIz4RR8=;
        fh=zlxW9Z4+1SUuOo6uPxuJmxEKdS3LvmGN2f+k5hv+Q58=;
        b=ei9k2crAH7JgbXZe6O6osVetRMfBHjkaTKHy0PrUynmGvgzJxvGODYp0ZSSr5MZ1XQ
         3FfBCslY4mIu7H+eHpB+EgtQX3Gx4cmde+LZ67Jgz7jH6YY54DBnTevdvhpOgexnR0JP
         qwgkD1bTsl0Qp7yAKmo86lvx7Tjdigpy+8TokkoPzvxbM2SlWXt6S7UuSVnt5UsJj6G6
         S9hZAl8GMQrMhL0icxBzcXEDKhxOrqU0USOsXH2Bo8FjvWRgSlSmYxsYfmaFgVRCZqkS
         SYWBI2A14Fa2aTiIl9mrmFBKA6GmsDb+o2YX+zjvonIV1CaHlZUo6LFl9o4VcB6HX9Tx
         Vh2g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6603ebb0@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id d11-20020a0ce44b000000b006960f7df172si1682015qvm.376.2024.03.28.09.18.13
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 28 Mar 2024 09:18:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 964417 invoked by uid 1000); 28 Mar 2024 12:18:13 -0400
Date: Thu, 28 Mar 2024 12:18:13 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Matthew Dharm <mdharm-usb@one-eyed-alien.net>
Cc: Norihiko Hama <norihiko.hama@alpsalpine.com>,
  Greg KH <gregkh@linuxfoundation.org>,
  "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
  "usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>,
  "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: [usb-storage] Re: [PATCH] usb-storage: Optimize scan delay more precisely
Message-ID: <2483fb37-8939-4723-ae8d-7a7a7dba3322@rowland.harvard.edu>
References: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
 <2024032757-surcharge-grime-d3dd@gregkh>
 <TYVPR01MB107814D7A583CB986884AD4B290342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
 <a446cdf4-3a9b-43d8-b22b-78c20cce2b4f@rowland.harvard.edu>
 <TYVPR01MB10781AA8B37E147E318597B46903B2@TYVPR01MB10781.jpnprd01.prod.outlook.com>
 <0c99daaf-c727-467f-b8c1-ba8846d8a9ab@rowland.harvard.edu>
 <CAA6KcBBcpug-rOytgnbb=c4O54m-Pfy=divqp12qOMrgmQrz7w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAA6KcBBcpug-rOytgnbb=c4O54m-Pfy=divqp12qOMrgmQrz7w@mail.gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6603ebb0@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6603ebb0@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Thu, Mar 28, 2024 at 08:21:18AM -0700, Matthew Dharm wrote:
> On Thu, Mar 28, 2024 at 7:51=E2=80=AFAM Alan Stern <stern@rowland.harvard=
.edu> wrote:
> >
> > On Thu, Mar 28, 2024 at 03:04:47AM +0000, Norihiko Hama wrote:
> > > > On Wed, Mar 27, 2024 at 07:39:55AM +0000, Norihiko Hama wrote:
> > > > > > Sorry, but module parameters are from the 1990's, we will not g=
o back to that if at all possible as it's not easy to maintain and will not=
 work properly for multiple devices.
> > > > > >
> > > > > > I can understand wanting something between 1 and 0 seconds, but=
 adding yet-another-option isn't probably the best way, sorry.
> > > > > 1 second does not meet with performance requirement.
> > > > > I have no good idea except module parameter so that we can mainta=
in backward compatibility but be configurable out of module.
> > > > > Do you have any other better solution?
> > > >
> > > > Can you accomplish what you want with a quirk flag?
> > >
> > > I think that it's hard to do that because 'quirk' is specified for a =
device
> > > but it's difficult to identify the devices to make quirk, especially =
for future introduced devices.
> > >
> > > Can we change the design of existing 'delay_use' ?
> > > For example, 'delay_use' is 32-bit value and the value "1000 secs" do=
es not make sense to set it,
> > > So if it's set to '1100', it's treated as "100 / 1000 =3D 0.1 sec". I=
s this possible?
> >
> > Here's an approach that Greg might accept.
> >
> > Since we already have a delay_use module parameter, we could add a
> > delay_use_ms parameter.  The two module parameters would display the
> > same value, but delay_use_ms would be in milliseconds instead of in
> > seconds.  (This is similar to what we did for the autosuspend and
> > autosuspend_delay_ms sysfs attributes.)
>=20
> What about just changing the parser on the currently delay_use
> parameter to accept an optional suffix?  If it's just digits, it is in
> seconds.  If it ends in "ms", then interpret it as milliseconds.  This
> would be backwards compatible with existing uses, give you the
> flexibility you want, avoid adding another modules parameter, and
> potentially be expandable in the future (if, for some reason, someone
> wanted microseconds or kiloseconds).

A little unconventional, I think (at least, I don't know offhand of any=20
other module parameters or sysfs attributes that work this way), but it=20
would work.

Noriko, would you like to write a patch to do this?

Alan Stern

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/2483fb37-8939-4723-ae8d-7a7a7dba3322=
%40rowland.harvard.edu.
