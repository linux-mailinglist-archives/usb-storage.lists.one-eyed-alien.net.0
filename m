Return-Path: <usb-storage+bncBDT33UHK6EMBB7EVS2YAMGQEX7URIOI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb48.google.com (mail-yb1-xb48.google.com [IPv6:2607:f8b0:4864:20::b48])
	by mail.lfdr.de (Postfix) with ESMTPS id 06D798902E4
	for <lists+usb-storage@lfdr.de>; Thu, 28 Mar 2024 16:21:34 +0100 (CET)
Received: by mail-yb1-xb48.google.com with SMTP id 3f1490d57ef6-dd169dd4183sf1258614276.3
        for <lists+usb-storage@lfdr.de>; Thu, 28 Mar 2024 08:21:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711639293; cv=pass;
        d=google.com; s=arc-20160816;
        b=fwPec71wvqsgolOQ3riqSYimkqujQbD+b7sZ5WM3mdGnAQgOJ8/sOrlQ0pIWaN3mcB
         pTE9dG7wu/UC0lW/wTI4IIiWFjyTOiRw+yL0+ChHGxDBkRpjLWzjqTBa4DFuvGWVbn8S
         xtAswlPJXXL+JRpJe50tnPMZzm/5Pwbere6lXZqIAlJGEIWI0c1XVmjxCHuGuk2cyXnR
         sow/BldiuUyiMh9ffYEawn3SpJfWbe4Z8dCxD8UUDzL4Cnu7TyPOkmf62oLuQ2tZ2JoE
         9ViP3kksZSZCoBraDSLxhBrhiaAOoOzLboVODpR+i6Znuws8mMXGDVGJmgNQFwElEBNE
         YJmA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=T5Yg2VKETCEbTkIl7s5FAOOhWpE5PeivFvAfn1u8l2Q=;
        fh=270DCSrcTntoIK48L7CPuJzp+wUvfX3d4x8cnmY/j38=;
        b=t6Lvkrk4zFhEyDAgJGThyKPkq0lqw3b1tH9DRx9ZwcgqWpFmces01qQSBCHNc1Stw0
         9JOxKyzqDAJCmaK5SVYxpzrPsHMQjbEwrdk4HI2muxvFDmZ4KQEj8FxO779Jn06WsJOx
         +QLHgca64bRnfltbUEkR2S2C5qUWNdK7BRMRUCHNUy9ulYbTSfHQH33KzaiZPlTXY58j
         9YL+qPJOw58NyxZNdklIZqLjgho4htFNtK1V2XekC6v71RrGCH/j8wIK8oJZFhAC0qRC
         ogdilfS0LBZ1liGIHSxN3uizNNyqOORB1qqzkPI/3nlzil5b/GmsdD400VbLTdg3lahx
         yhwg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@one-eyed-alien.net header.s=google header.b=MW1G5Ga2;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711639293; x=1712244093; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T5Yg2VKETCEbTkIl7s5FAOOhWpE5PeivFvAfn1u8l2Q=;
        b=KYEKBM7rl1Yfk7uy41N/kPdhAua3shBT3BSIvG+r0V5SnTXWLPj5DCifn7D/OOFDMl
         SahoN3dgZPY9xU7gB5ImQjYl9A6wgrnTCcEAzCACxfqlLYkvmVvrnVsuM82tfglU+UhZ
         LUe+OxrQwK/GMHuExa045WO5eJG/DG5DuURFQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=one-eyed-alien.net; s=google; t=1711639293; x=1712244093; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T5Yg2VKETCEbTkIl7s5FAOOhWpE5PeivFvAfn1u8l2Q=;
        b=cvxD8MXFJMBi/MIw9DPJNiXwViCTT8NlfdkO3SjuECYdahZiWLfMkUNGUL6Ge5z50I
         5GU56w1y3I5PRioEMUJcds/piDrEr7x+8lLbiWG7R0a1L3z452j7krweIMJCtiDY+O7U
         8fpXkGKVRPUmU/c9egQCextx87UPozjbWRX1U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711639293; x=1712244093;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=T5Yg2VKETCEbTkIl7s5FAOOhWpE5PeivFvAfn1u8l2Q=;
        b=F3pzZSDGkkwVVwycykoBZTeMd26grxuu7imkh1jwMx/nHACe/yZTuObRddA7fu9QEn
         A292hndMKifxeB8saGYyI/mNJ3PEu5Rrsjf2+Kz3tlvmUg5ZospcqYalt1h0ClOtWvIM
         WSbvVpyk3wpHBffLHAQNQpqlQPYpuSmm/wZYZWltKfxG3CJ561ztBcl5TbFfNCx4nf25
         49HlUId2EITcggJmBH/RWczXE61Gsxy5wsTlj/tzBzFyZDUK23gf5KHNFs06B8Gl+zGi
         MKS+nwwjEIT+3llHj5mExGnV4Yn8k+160Pm1tV8bjWV/+jgZFUIlcTeapDhlfnUXUFmI
         InVw==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCVSa4nL1d40jGscq9eiXOkq7C+L083MK31jfmb8zkxpmBhGCSjZLyS7peU5FVMryirzOf7fDiUIJCMtvymkW5X1mygFrnTPCrC2
X-Gm-Message-State: AOJu0YySBPHOc66JOiPA8ujFZdjfVpVKxkKSuqUsQh8WzLbDXqpJANnL
	L23MVhdbuelUDA9uJiKkpBLQflyjkXgsZkIdSEYWEU+/OBl9FArYD0yiNoE6TPQ=
X-Google-Smtp-Source: AGHT+IEroqGPYQJdrvvIyikW4FIARqwlRVlK9Qkan6BkSCM0pUqenrmNI3uP59z1moa6EmZglJw5EA==
X-Received: by 2002:a25:5f4e:0:b0:dc7:d6:fd44 with SMTP id h14-20020a255f4e000000b00dc700d6fd44mr2861998ybm.65.1711639292505;
        Thu, 28 Mar 2024 08:21:32 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:c7d1:0:b0:dcc:8ecd:49fe with SMTP id w200-20020a25c7d1000000b00dcc8ecd49fels196902ybe.0.-pod-prod-02-us;
 Thu, 28 Mar 2024 08:21:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVVJaUhJRJisX7Rd++BFRROdnrs3EBuTEfof/aI/DSr5zO/GaxwFJk6pLkPu87jS0AYiFqXEyFCVk9wb8dapgShA302y0PAl119Slli8RxEZ+F8eyU=
X-Received: by 2002:a25:68c1:0:b0:dcd:c3ba:d788 with SMTP id d184-20020a2568c1000000b00dcdc3bad788mr3359204ybc.47.1711639290790;
        Thu, 28 Mar 2024 08:21:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711639290; cv=none;
        d=google.com; s=arc-20160816;
        b=Dq9nvV6nytoEjHJYqThpqhxJfvW0veJYY82jqiaQZgwv6xy0mLsfuu1Y4s4Ew58U/o
         irTCdgsyK1KkALzF2GdiSjcqEWveM9678dpi5Mh62JDZC9mjd8Zea8ny5glf/Aoc0UoG
         tl6jVP7IkQhEe1c4tEz2uo+favpHvonFogCS1FdNZihocmfXpZeyLvj0AB1wg06pRigs
         3bh03TRt+Gwh5/b7fZlHDpemr+wNmfGpihyOm1Pt+4x7A7sXeCXPGzRWZknIQV6DJmgN
         pbngm7oUk4rwtPVlVgqYJ0kH6zFl5n6N26o/EhXBtGl08GWBHvnO5cMFJag2qpxAYgKV
         SV9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=Q7QI/tup+7NJmY+g+0vWh6xzWihOFqUtUifn+JRUGos=;
        fh=KuwI7kXBIX+GPBkrlAyX2z/DPBOw6n+KOCq4sgTNdIM=;
        b=JKyJiVGmh1W6X+Gm3RyM/kI/6hlTRkyIMKTrRcLLHXv/9gZb+FXyZfyEq9WKlaxdMh
         iFDxNL0hzt78oe88thWwH9uA4l+6sgo17KqImS1NxSYMGlArxtKqkhxL9IXiKjl9mQ3q
         HKTa85bYog1Uc5nz7ry73x+xAzJPuuM+wQBtmTIUcMKecrwi6R+lhEg/2VYPD0HW8aHo
         9KvaDu8lwnB/e0qw6GgO2M2UlpUGthT9w7H/YVRuMdZ5T7OJJvlo6rtwSUkYGmo4b8k7
         4IZonmnn5yn1Vh69V3BDHA1eEf3XHmejsAN66SH8xqn730n6NA/V/hMpBZCI9jP1y7mj
         kG5g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@one-eyed-alien.net header.s=google header.b=MW1G5Ga2;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id cf13-20020a056902180d00b00dd12679a87bsor584092ybb.9.2024.03.28.08.21.30
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 28 Mar 2024 08:21:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCXrNnHVAzG2cZgpYJQex8jet9M5JSot4O1wIdijDDYpZCMiNAtvvh2hYd3CK8qND1ZCHpii87V/7UpIg5cLFwlgBh/5oKh2VtbAigCgfmvJVN/IYEI=
X-Received: by 2002:a25:6b4b:0:b0:dbd:120e:f337 with SMTP id
 o11-20020a256b4b000000b00dbd120ef337mr3222617ybm.30.1711639288887; Thu, 28
 Mar 2024 08:21:28 -0700 (PDT)
MIME-Version: 1.0
References: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
 <2024032757-surcharge-grime-d3dd@gregkh> <TYVPR01MB107814D7A583CB986884AD4B290342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
 <a446cdf4-3a9b-43d8-b22b-78c20cce2b4f@rowland.harvard.edu>
 <TYVPR01MB10781AA8B37E147E318597B46903B2@TYVPR01MB10781.jpnprd01.prod.outlook.com>
 <0c99daaf-c727-467f-b8c1-ba8846d8a9ab@rowland.harvard.edu>
In-Reply-To: <0c99daaf-c727-467f-b8c1-ba8846d8a9ab@rowland.harvard.edu>
From: Matthew Dharm <mdharm-usb@one-eyed-alien.net>
Date: Thu, 28 Mar 2024 08:21:18 -0700
Message-ID: <CAA6KcBBcpug-rOytgnbb=c4O54m-Pfy=divqp12qOMrgmQrz7w@mail.gmail.com>
Subject: Re: [usb-storage] Re: [PATCH] usb-storage: Optimize scan delay more precisely
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Norihiko Hama <norihiko.hama@alpsalpine.com>, Greg KH <gregkh@linuxfoundation.org>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mdharm-usb@one-eyed-alien.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@one-eyed-alien.net header.s=google header.b=MW1G5Ga2;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates
 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net
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

On Thu, Mar 28, 2024 at 7:51=E2=80=AFAM Alan Stern <stern@rowland.harvard.e=
du> wrote:
>
> On Thu, Mar 28, 2024 at 03:04:47AM +0000, Norihiko Hama wrote:
> > > On Wed, Mar 27, 2024 at 07:39:55AM +0000, Norihiko Hama wrote:
> > > > > Sorry, but module parameters are from the 1990's, we will not go =
back to that if at all possible as it's not easy to maintain and will not w=
ork properly for multiple devices.
> > > > >
> > > > > I can understand wanting something between 1 and 0 seconds, but a=
dding yet-another-option isn't probably the best way, sorry.
> > > > 1 second does not meet with performance requirement.
> > > > I have no good idea except module parameter so that we can maintain=
 backward compatibility but be configurable out of module.
> > > > Do you have any other better solution?
> > >
> > > Can you accomplish what you want with a quirk flag?
> >
> > I think that it's hard to do that because 'quirk' is specified for a de=
vice
> > but it's difficult to identify the devices to make quirk, especially fo=
r future introduced devices.
> >
> > Can we change the design of existing 'delay_use' ?
> > For example, 'delay_use' is 32-bit value and the value "1000 secs" does=
 not make sense to set it,
> > So if it's set to '1100', it's treated as "100 / 1000 =3D 0.1 sec". Is =
this possible?
>
> Here's an approach that Greg might accept.
>
> Since we already have a delay_use module parameter, we could add a
> delay_use_ms parameter.  The two module parameters would display the
> same value, but delay_use_ms would be in milliseconds instead of in
> seconds.  (This is similar to what we did for the autosuspend and
> autosuspend_delay_ms sysfs attributes.)

What about just changing the parser on the currently delay_use
parameter to accept an optional suffix?  If it's just digits, it is in
seconds.  If it ends in "ms", then interpret it as milliseconds.  This
would be backwards compatible with existing uses, give you the
flexibility you want, avoid adding another modules parameter, and
potentially be expandable in the future (if, for some reason, someone
wanted microseconds or kiloseconds).

Matt

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CAA6KcBBcpug-rOytgnbb%3Dc4O54m-Pfy%3=
Ddivqp12qOMrgmQrz7w%40mail.gmail.com.
