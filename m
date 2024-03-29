Return-Path: <usb-storage+bncBDT33UHK6EMBBTN2TCYAMGQELWKPJ6Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC63891081
	for <lists+usb-storage@lfdr.de>; Fri, 29 Mar 2024 02:45:51 +0100 (CET)
Received: by mail-yb1-xb46.google.com with SMTP id 3f1490d57ef6-dbe9e13775asf2506404276.1
        for <lists+usb-storage@lfdr.de>; Thu, 28 Mar 2024 18:45:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1711676750; cv=pass;
        d=google.com; s=arc-20160816;
        b=kh7/WmEyxd2x4MHlkxP72Qw9C+4aD2v9NzEO0dh7y02ysclnR3orNaLl+2M2l7n2oY
         X+PVVH8gtOR54Mi30haqyFvKmH3zeu1BxBT0lrTJvH4IimDhaIGFqyQWkEFXQKbJWoVg
         hhEQO5ABs4m2QG3FLRZ37VrmrRccstZ+tusFkX66lviWHs3KBsxipu0Tcfrxpx3JofaJ
         Itb36ajrTDwSOuPpxoXoBXu40pweQzxGAZ8r8NeFL0AdSqk2Cy08abMVDrdUNDOdm8ti
         XmTTLOPfCY7isEpQTzuuH9I24Fw9ILznajQ3Lsqg1djL6MZ7SzAN8tBihvcV0UNroso0
         +LQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=Nh2mZ7Va/7N1mhoTGll3g3LsevgpZEb+WaL/VHPBz0Q=;
        fh=kDQfSetqDMIpe1pUycxRHuUf64llk1rWUKgdt3yRbS0=;
        b=YSjvSf+2ws3G7dij8Q71SJmue8cejQT5s+ib4MAXnxwrPZ7vjcuUjhyK+T5W0XU/hN
         St5Mvxec3i1q4mDay8FFDLBrMTEWmhxSlvm+/3C3YDiTZ0E5RrQjqi98Wj9lorRQO3ID
         Tx8fxo7zbmCTjngvzhA4ePVm7jGkBKGyWg806e6o2wfC/NSkdwVoHuxnQiK3jb+kAFb4
         nxrb3ENtRlmwZUchyey3dpNI+/+CN4vRFTodWTo8s+zd23AbypFJ4ti05PbiZ/9EHcHL
         Z8SSl94wty4ySbOJu1ANWogRf42wCFOnNZNrsWy8+0cr54kL9dfbBVYvszYOibtSyXHa
         I8HQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@one-eyed-alien.net header.s=google header.b=C53UKEJE;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1711676750; x=1712281550; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:sender
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Nh2mZ7Va/7N1mhoTGll3g3LsevgpZEb+WaL/VHPBz0Q=;
        b=hA1Lu6YYTLfMNbKJPLlbFm6hg3l2VPYwEQAxGOQg1V29AD6ppACPSbKwE370R/UMsv
         wo3mmxb/OspdJQRS/VHv5y5y8tylDI69jnX1YLl9RmwQcHiPXFVxop1+p5y2/f+15eAg
         yjAw+qT+iyhIkiCnWGnPkRv/b/fxsxPk61gpo=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=one-eyed-alien.net; s=google; t=1711676750; x=1712281550; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:content-transfer-encoding:cc:to:subject
         :message-id:date:from:in-reply-to:references:mime-version:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nh2mZ7Va/7N1mhoTGll3g3LsevgpZEb+WaL/VHPBz0Q=;
        b=cFr9bMAPgYUWn5jvzxyiX/86Zg7rlDJFY3aM6loIfw4rkd7j2JkgK23LwStnVRcO/q
         A4Dx59wRC1QaLiJ0PNBgXA+HnupV7edx29ZrzW9CIl7Ls09GhMCD5F+Um/KUvs0rvINN
         6rFMiss4be2MNl7TGSc3+tbu6V7pfH/40rI8Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711676750; x=1712281550;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-beenthere:x-gm-message-state
         :sender:from:to:cc:subject:date:message-id:reply-to;
        bh=Nh2mZ7Va/7N1mhoTGll3g3LsevgpZEb+WaL/VHPBz0Q=;
        b=Wqd9wLGssf5Yn6+wd57FYqCf7YsbmLSpRR3Ogm1N/BJXTNYE8pz2hs/PjRnTo87eic
         oWOBcdyn+1nAfW2WBMU7k4k5R7lnbkbtYo3aOLEymOQy6DPwhFxmLP506eIqFI8EsY9i
         CyU5AjwNidB9N6IErlmvw/t2m1UNz00w8Kc/UEN2uEfuC7GNIFCNf1BF+JrA4g+NQqv8
         tn6jNCLB/OB04wW2W936qCi0qf/J3HSkKucXeMCAeVqHL60s3WZcuRvv46/YVHH4zIrp
         RgO1yPa61XJBUfAdxuT49+eic56O2hJBwJyceRpQHT8QZ7C3XuA4uvWfxXXEyJwviaor
         ngBQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXTC61f7dX5LV0r1QUwd2GIt5AUvcZa+DpIToQuQSVprYy3izi27Cww9iz49ZZ5rPzGq0Y3NeN5env3Gxdw254YpBc5I2Hr1aRy
X-Gm-Message-State: AOJu0YxxT1rnC2LTJPE9o8kh2zRL45cM/gZ1UCsiUoshuNPg1mAWmqJs
	4QCw4hfklXdXwlfhyeSwZhCT1dC7Bz00w2QxJEdZrjQ4sHdzdVIRAjwP/GyHojc=
X-Google-Smtp-Source: AGHT+IFJrwWtUvhrSddDNUyUBIt9F7Qx8EQRhLclk72oKnLoo0RLfjhIR/w9KOR+lO2EuONxLowTbQ==
X-Received: by 2002:a25:6983:0:b0:dcc:67a7:430 with SMTP id e125-20020a256983000000b00dcc67a70430mr1072527ybc.15.1711676749899;
        Thu, 28 Mar 2024 18:45:49 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:d8d7:0:b0:dcc:4b24:c0dd with SMTP id p206-20020a25d8d7000000b00dcc4b24c0ddls2238636ybg.0.-pod-prod-08-us;
 Thu, 28 Mar 2024 18:45:48 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCW+p85Y2kEW/pONHWUNoEAfgM92yabEVLIArAO5I7ITgLSy4p4aNDTCaXJiTS3gtx2YtRk5xngzc4yqRGq3NN/0/6eUZYNCdyfv6i/RSWHVtsjMDAY=
X-Received: by 2002:a0d:efc3:0:b0:608:d1b3:30ac with SMTP id y186-20020a0defc3000000b00608d1b330acmr1258278ywe.30.1711676748676;
        Thu, 28 Mar 2024 18:45:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1711676748; cv=none;
        d=google.com; s=arc-20160816;
        b=IritlIBcvWhNGms3qvhsmc0qinOfe8uqri36CA+phyfuTiSG9bTywotJMBZf1cbib9
         NJRUrT7ic+tFIcpmt9flQNVCujunVumaWjGietUXw9V3aJpE9Y9QVmkAA3G6/mzjsL+H
         Nnm0BBGEbitziVgZA/IBMJCZEOMwP22H6vHCCsCs6Q5Sp+9endj5hRu+poeCuFW940Zi
         oEMMdcaKzH3lQcUYYBRibO1S3vDj+4BObr5sZLFvnj+CYVZ2KtlxWnds8DHKt0mja9EH
         40SXtdWx5KqurCHQczlWqv1ylVaAzpZIrLB1Fww/XHDogZLadNzOHIoqF6fe2ggJ1NX0
         qVNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=vo2THDAmcgguZrArlqRwMiyipMqDod7x18NpKsBJsas=;
        fh=uBpzP2VKqCQx5ZtCu1dKoUWxmAfgHU/wDnIOvVSHu3U=;
        b=EnoaSF4q/7J+eErVaibdzobPgcfsMPu5QeeeCBwOefSI/XnDouTrx21RNjaVrOQG8/
         NSBoxkhTGJqyyUTNIbZh8uSCoQ23QxTQ18hMRznjK7jjxv1M91EGmqoe+JRGiEh09EFO
         VBfLTeJ4nrHFm7oMBL5QGB0lUAz/cRm7ggtvBM3erfhAM2kSvx4+d1w4NXreRNU6F9LZ
         luSW5Og5P0CGffM+K8Qqd3j+TY7csQUaU5c1t6sfYHSqVekUH+cxK/eAevQBhQwrv89B
         QN7HOSoWKndx5B8nRPtdqtoMSFt8LvEuRgfCk2Kzja6Cz4GinI1zmrRYiYvRA36maLaD
         JPrA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@one-eyed-alien.net header.s=google header.b=C53UKEJE;
       spf=pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) smtp.mailfrom=mdharm@one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id h6-20020a0dc506000000b0061435c7f2dcsor441365ywd.14.2024.03.28.18.45.48
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 28 Mar 2024 18:45:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdharm@one-eyed-alien.net designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVpmMrHfNqTxK0LqIQCD614MzgLUc8VAMFugk+4QFvVPTcG0Sz8yeRWlsCzZ8pBow8OTGAgNNfBZuXDsNJWUfCY6/XNl5kn90ZndUuIsWbsvU+v4Cg=
X-Received: by 2002:a0d:f706:0:b0:610:b930:816a with SMTP id
 h6-20020a0df706000000b00610b930816amr1227020ywf.49.1711676748277; Thu, 28 Mar
 2024 18:45:48 -0700 (PDT)
MIME-Version: 1.0
References: <20240327055130.43206-1-Norihiko.Hama@alpsalpine.com>
 <2024032757-surcharge-grime-d3dd@gregkh> <TYVPR01MB107814D7A583CB986884AD4B290342@TYVPR01MB10781.jpnprd01.prod.outlook.com>
 <a446cdf4-3a9b-43d8-b22b-78c20cce2b4f@rowland.harvard.edu>
 <TYVPR01MB10781AA8B37E147E318597B46903B2@TYVPR01MB10781.jpnprd01.prod.outlook.com>
 <0c99daaf-c727-467f-b8c1-ba8846d8a9ab@rowland.harvard.edu>
 <CAA6KcBBcpug-rOytgnbb=c4O54m-Pfy=divqp12qOMrgmQrz7w@mail.gmail.com> <2483fb37-8939-4723-ae8d-7a7a7dba3322@rowland.harvard.edu>
In-Reply-To: <2483fb37-8939-4723-ae8d-7a7a7dba3322@rowland.harvard.edu>
From: Matthew Dharm <mdharm-usb@one-eyed-alien.net>
Date: Thu, 28 Mar 2024 18:45:36 -0700
Message-ID: <CAA6KcBC0JHMtKj=35TQgtbnoJQQDAmcxp=NKJ8bBxbJPCNNadQ@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH] usb-storage: Optimize scan delay more precisely
To: Alan Stern <stern@rowland.harvard.edu>
Cc: Norihiko Hama <norihiko.hama@alpsalpine.com>, Greg KH <gregkh@linuxfoundation.org>, 
	"linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>, 
	"usb-storage@lists.one-eyed-alien.net" <usb-storage@lists.one-eyed-alien.net>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: mdharm-usb@one-eyed-alien.net
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@one-eyed-alien.net header.s=google header.b=C53UKEJE;
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

On Thu, Mar 28, 2024 at 9:18=E2=80=AFAM Alan Stern <stern@rowland.harvard.e=
du> wrote:
>
> On Thu, Mar 28, 2024 at 08:21:18AM -0700, Matthew Dharm wrote:
> > On Thu, Mar 28, 2024 at 7:51=E2=80=AFAM Alan Stern <stern@rowland.harva=
rd.edu> wrote:
> > >
> > > On Thu, Mar 28, 2024 at 03:04:47AM +0000, Norihiko Hama wrote:
> > > > > On Wed, Mar 27, 2024 at 07:39:55AM +0000, Norihiko Hama wrote:
> > > > > > > Sorry, but module parameters are from the 1990's, we will not=
 go back to that if at all possible as it's not easy to maintain and will n=
ot work properly for multiple devices.
> > > > > > >
> > > > > > > I can understand wanting something between 1 and 0 seconds, b=
ut adding yet-another-option isn't probably the best way, sorry.
> > > > > > 1 second does not meet with performance requirement.
> > > > > > I have no good idea except module parameter so that we can main=
tain backward compatibility but be configurable out of module.
> > > > > > Do you have any other better solution?
> > > > >
> > > > > Can you accomplish what you want with a quirk flag?
> > > >
> > > > I think that it's hard to do that because 'quirk' is specified for =
a device
> > > > but it's difficult to identify the devices to make quirk, especiall=
y for future introduced devices.
> > > >
> > > > Can we change the design of existing 'delay_use' ?
> > > > For example, 'delay_use' is 32-bit value and the value "1000 secs" =
does not make sense to set it,
> > > > So if it's set to '1100', it's treated as "100 / 1000 =3D 0.1 sec".=
 Is this possible?
> > >
> > > Here's an approach that Greg might accept.
> > >
> > > Since we already have a delay_use module parameter, we could add a
> > > delay_use_ms parameter.  The two module parameters would display the
> > > same value, but delay_use_ms would be in milliseconds instead of in
> > > seconds.  (This is similar to what we did for the autosuspend and
> > > autosuspend_delay_ms sysfs attributes.)
> >
> > What about just changing the parser on the currently delay_use
> > parameter to accept an optional suffix?  If it's just digits, it is in
> > seconds.  If it ends in "ms", then interpret it as milliseconds.  This
> > would be backwards compatible with existing uses, give you the
> > flexibility you want, avoid adding another modules parameter, and
> > potentially be expandable in the future (if, for some reason, someone
> > wanted microseconds or kiloseconds).
>
> A little unconventional, I think (at least, I don't know offhand of any
> other module parameters or sysfs attributes that work this way), but it
> would work.

Actually, I got the idea from the existing parameters such as "mem=3D"
and similar, which accept K, M, or G as suffixes to denote the units
for the number.  Credit where credit is due.

Matt


--=20
Matthew Dharm
Former Maintainer, USB Mass Storage driver for Linux

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/CAA6KcBC0JHMtKj%3D35TQgtbnoJQQDAmcxp=
%3DNKJ8bBxbJPCNNadQ%40mail.gmail.com.
