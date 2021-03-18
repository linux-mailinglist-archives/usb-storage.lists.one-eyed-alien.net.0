Return-Path: <usb-storage+bncBC6MFJWO34DBBQ4SZSBAMGQEXGVTXYA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id EB99A340094
	for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 09:03:16 +0100 (CET)
Received: by mail-qv1-xf46.google.com with SMTP id k92sf25846288qva.20
        for <lists+usb-storage@lfdr.de>; Thu, 18 Mar 2021 01:03:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616054595; cv=pass;
        d=google.com; s=arc-20160816;
        b=XBtaR02/jNwSudTj8HfvgdAVV/qZWWzABm40xFS1OaQ+jj5W3qr5zVRQeTQX4AKua2
         iGWQAGCQPHa7pVvsO7RXuTrRsA/XOzRhkHEx+zKZ8muWByU3sF0/+j8nX1uQ17PpOzUc
         TQQGgx3Ed/mSB6URcAcdHClnwe+BVwScMQ+leXvohYajrwR6T+HPywPSJbQOAZVmcSc1
         jKIaT8S8iX39Hp3ETEyEqn0FbGbbMxEGwcBfJHAq3SknWQhBxGcc5VWrav95y9gjgBlu
         XHO9VZDdPKwBZnLY0Do3CqlMGkDwilLCEpL7RtqQNAzhXz3J/E3DicV2ECaZp7TqSYWP
         BVHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-disposition
         :content-transfer-encoding:mime-version:in-reply-to:references
         :subject:cc:to:from:date:message-id:sender:dkim-signature;
        bh=eGLcUW0RCeE5NNEy3beuIRbQZuY35b5RhGm1uNuTnz4=;
        b=D8qmNyjvb3EZOSQI+rUvVA7SrFl/mhSokTH77t9Q9UzbhZxpkTZvPHgDiTVLbnyIGb
         G4+csfIgsOE9oJiq12OvG/bPj8t3TUJgw4XLtLP+7v/4TboWP5iUCgi5Ds/FL66O3Txu
         lyJDrhxh01j3qfx7F4uaM7vG9+4IYzC204VhmtWnYc6P4JxE2UFcxUPt2IAZGSsRoQSI
         31vj2KjQp2Vtcf6drk1u42neT1ZeFUUemF+CF34jXLv3Z4uaLIsl0/rxgaWlhztmuMwu
         K35VPaEIjEWIbM/+puNyuNje9zBuqG4teE2M7TqJm3t3X2mewmma2DERF+lMr74E1Ns9
         IOnw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:message-id:date:from:to:cc:subject:references:in-reply-to
         :mime-version:content-transfer-encoding:content-disposition
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eGLcUW0RCeE5NNEy3beuIRbQZuY35b5RhGm1uNuTnz4=;
        b=I8GeI46ktltkwnzih9COTSidvoutOvj3UyKqYZlkTTlp5xVoEc4XaAHucy4jYUKccV
         6TwRgPdwQQTXybHFMLHUhT4WSQV4ZgU5ehDGO30IZMXe6xeWAYu4l585/fZqqLVi4Yis
         nUyV2Lsa50SRubr7cQ2KR7FMKrVVo25YowjAw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:from:to:cc:subject
         :references:in-reply-to:mime-version:content-transfer-encoding
         :content-disposition:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eGLcUW0RCeE5NNEy3beuIRbQZuY35b5RhGm1uNuTnz4=;
        b=r12n8sd/oxQw626q32/1Z4O+FknzhZcGD1KK2Icz45WQv2RmCNK28eH/uVrFx5eY3t
         1W8x628aAvVOtaTKNOp6fjlSYDdN2gkCkvEogf6lG+KbOFL4q3r6R5Uu9sCXpzpBHnk9
         sdt+kPd1WS/JdzDb1xIISksvt49paGDknFRi0wOp63ICeVg7iQAZ8rruNMze/TSNc6H8
         lJabFsVsXYKogrU3m/ccGlRlNfgvFyAnKztpLt0nrkR7jZwTJkx0+XlrQuCE2e75GBv8
         kWJEIumokZpuL35h30Y/v+c6Tn5wlK7aeaiG8CMDEzvt8NxuuVqHMK1P9dxGsCWyscHo
         xNUQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530dSy6WMsfUOKQ6Yf27CNUA+bSo095+X08/SThSBDUWkcsY1ku2
	yv8pmMUNyeMKGQdIqg2lzBagHw==
X-Google-Smtp-Source: ABdhPJylWwwbx56Ci2vU+eR3Bs72ADOC7HrEAfWj28J0+CdxBpk42vBv0rWIRdrHKNbYib2L2HBEZQ==
X-Received: by 2002:a37:dcb:: with SMTP id 194mr3269504qkn.4.1616054595670;
        Thu, 18 Mar 2021 01:03:15 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:991:: with SMTP id x17ls676651qkx.2.gmail; Thu, 18
 Mar 2021 01:03:15 -0700 (PDT)
X-Received: by 2002:a37:8443:: with SMTP id g64mr3166932qkd.185.1616054594930;
        Thu, 18 Mar 2021 01:03:14 -0700 (PDT)
Received: by 2002:a37:9c48:0:b029:27d:b819:ba30 with SMTP id f69-20020a379c480000b029027db819ba30msqke;
        Thu, 18 Mar 2021 00:03:10 -0700 (PDT)
X-Received: by 2002:adf:9261:: with SMTP id 88mr7859980wrj.270.1616050990200;
        Thu, 18 Mar 2021 00:03:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616050990; cv=none;
        d=google.com; s=arc-20160816;
        b=oXkfZ3agguD/QSwpFxhQkAgT6dpgHHpLDk33osFBqIAZgeiZXA7t4W8wg/wh2kTyY7
         u/JzYasorwrghzDJB1KsuHuUBfVQuCmlGxy+20w42HCA81NW2u1aBFeEi2fJBugyM764
         MwVbUnrmBAYMrMBAhuiueXvO41wJDxdL1WAZaxR8fKWc7gOaxEEpiFZ6Rtjm1AYXA/vQ
         CWsWBO4BQzt4/aXWKPhue67QeCTl3EPk4AnE596jJJQ4jcvBcuTp7SsUcfzztW4IlKjT
         SycSPAScogMAqedTtu0bIqP1xLVdye4ZMupml7XrEr+1fS9MArjyxnin4ygWkdO7Gqs9
         0y/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:content-transfer-encoding:mime-version
         :in-reply-to:references:subject:cc:to:from:date:message-id;
        bh=NpskQ29jX02iCcIfApWXTRAO6S1xpAPAKxMfX3fTae0=;
        b=vLBqJsOtzQvxb2qHxzgDXarR7xF4t6W0VdqlnSxEFLpXoeFuzdZZ1b12+eiW+n/lSz
         p9+MKFdzr+Ag49zTo1V7RerNPlz74jP7/guGTtx9kUePmX9ybiNXa2NhC79Wy/OTbeXD
         QljEXHsO7CDEuvVJsYhGwb7ReqFQBqN7iNyjI/nOlrCPU8xaPYckb+6onhmD9BQtNhk0
         Z2pbmQZgXbk89ihJLGuf/HkNihAC0jneSW6vS9ihLwdxKctnx3ejkfTShPnB9O1l4KhY
         BLywPklVgTyNtTuow2BbjFDOfHsAWK+lxOxgOKorQMDh+Ir+47/b4aOq5k08HbUhuWfa
         h3uw==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
Received: from mx4.uni-regensburg.de (mx4.uni-regensburg.de. [194.94.157.149])
        by mx.google.com with ESMTPS id f7si955190wrt.235.2021.03.18.00.03.10
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Mar 2021 00:03:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as permitted sender) client-ip=194.94.157.149;
Received: from mx4.uni-regensburg.de (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 613976000058
	for <usb-storage@lists.one-eyed-alien.net>; Thu, 18 Mar 2021 08:03:09 +0100 (CET)
Received: from gwsmtp.uni-regensburg.de (gwsmtp1.uni-regensburg.de [132.199.5.51])
	by mx4.uni-regensburg.de (Postfix) with ESMTP id 35F9A600004E
	for <usb-storage@lists.one-eyed-alien.net>; Thu, 18 Mar 2021 08:03:09 +0100 (CET)
Received: from uni-regensburg-smtp1-MTA by gwsmtp.uni-regensburg.de
	with Novell_GroupWise; Thu, 18 Mar 2021 08:03:08 +0100
Message-Id: <6052FB2B020000A10003FE1E@gwsmtp.uni-regensburg.de>
X-Mailer: Novell GroupWise Internet Agent 18.3.1
Date: Thu, 18 Mar 2021 08:03:07 +0100
From: "Ulrich Windl" <Ulrich.Windl@rz.uni-regensburg.de>
To: "Lennart Poettering" <lennart@poettering.net>,
 <stern@rowland.harvard.edu>
Cc: <zzam@gentoo.org>,
 "systemd-devel@lists.freedesktop.org" <systemd-devel@lists.freedesktop.org>,
 <usb-storage@lists.one-eyed-alien.net>,<hirofumi@mail.parknet.co.jp>,
 <linux-usb@vger.kernel.org>
Subject: Antw: [EXT] Re: [systemd-devel] [usb-storage] Re: Amazon Kindle
 disconnect after Synchronize Cache
References: <dfd2b281-3beb-9869-37b6-8bd48a6cf40f@gentoo.org>
 <20210310214648.GA236329@rowland.harvard.edu>
 <841a9a54-78ee-ffaa-fc3c-12defcf43b36@gentoo.org>
 <20210311143912.GA257360@rowland.harvard.edu>
 <f2acfeef-a81a-d7c0-90a8-b290a18cb742@gentoo.org>
 <20210316162650.GB448722@rowland.harvard.edu>
 <031a20c5-27c3-cc13-6e0b-a308644abce4@redhat.com>
 <20210316170433.GD448722@rowland.harvard.edu>
 <1d9f059e-8b21-0895-9a50-39b6b1a5cc5c@redhat.com>
 <20210317151746.GB488655@rowland.harvard.edu>
 <YFIyidaZZmDoTevB@gardel-login>
 <F279F9BC020000F5AE14D9EC@gwsmtp.uni-regensburg.de>
 <C63C44570200006665972EEF@gwsmtp.uni-regensburg.de>
 <B960C12A020000A667ECE9F9@gwsmtp.uni-regensburg.de>
 <B72C58530200001565972EEF@gwsmtp.uni-regensburg.de>
 <0F2319EB020000F567ECE9F9@gwsmtp.uni-regensburg.de>
 <DE3F57520200009E65972EEF@gwsmtp.uni-regensburg.de>
 <52CC0074020000A3D68BC3D5@gwsmtp.uni-regensburg.de>
In-Reply-To: <52CC0074020000A3D68BC3D5@gwsmtp.uni-regensburg.de>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline
X-Original-Sender: Ulrich.Windl@rz.uni-regensburg.de
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of ulrich.windl@rz.uni-regensburg.de designates 194.94.157.149 as
 permitted sender) smtp.mailfrom=Ulrich.Windl@rz.uni-regensburg.de
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

>>> Lennart Poettering <lennart@poettering.net> schrieb am 17.03.2021 um 17=
:47
in
Nachricht <YFIyidaZZmDoTevB@gardel-login>:
> On Mi, 17.03.21 11:17, Alan Stern (stern@rowland.harvard.edu) wrote:
>=20
>> On Wed, Mar 17, 2021 at 01:21:50PM +0100, Hans de Goede wrote:
>> > Hi,
>> >
>> > On 3/16/21 6:04 PM, Alan Stern wrote:
>> > > I think it would be mildly better, but not a whole lot.  Since the
>> > > Kindle describes itself as having removable media, the kernel normal=
ly
>> > > probes it periodically to make sure the media remains present.  The
>> > > default probing interval is 2 seconds.  Reducing it to 0.9 seconds
>> > > doesn't represent an exorbitant additional load IMO =E2=80=91=E2=80=
=91 especially
since
>> > > Kindles don't tend to spend huge amounts of time connected to
computers.
>> >
>> > Ah, I did not know that the default polling interval was that low(ish)=
,
>> > given that the default indeed is already that low, then changing it to
>> > 0.8 seconds would not be a big change.  And we probably have a lot of
>> > lower hanging fruit for unnecessary wakeups then that.
>>
>> So we need to make a decision: Should the patch be merged, or should we
>> punt the issue to userspace tools?
>>
>> On the plus side, the patch is rather small and non=E2=80=91invasive (al=
though
>> it does allocate the last remaining bit in the 32=E2=80=91bit fflags fie=
ld).
>> There's also the advantage of sending the extra command only when it is
>> needed, as opposed to increasing the overall frequency of TUR polling.
>>
>> Any opinions?
>=20
> I'd argue that this should be done in the kernel.
>=20
> IIUC the issue can actually lead to data corruption, no? i.e. some
> program writes 25 different files to different places on such an fs,
> then calls fsync() on one of them but not the others. Then quite
> possibly the fsync() will trigger a device disconnect sooner or later
> at which point the one file surely hit the disk, but there's no
> guarantee for the other 24, they might remain cached in memory and are
> never written out.
>=20
> I'd say quirks that are necessary to avoid data corruption should
> better be done in the kernel and udev's hwdb stuff is only for stuff
> that "fills in gaps", i.e. adds additional tweaks that make things
> prettier, cleaner, nicer, more efficient but not things that make the
> basic things work, and data integrity sounds pretty basic to me.

But seeing the list of bad, broken or ill-designed hardware grow year by ye=
ar,
I wonder whether we really want all that bloat in the kernel.

>=20
> Or to give a counter example: the device advertises it can do media
> change, but actually cannot, right, it's not a floppy drive or cdrom
> driver after all? maybe hwdb would thus actually be the place for the
> opposite of the suggested fix: turn off the media change polling to
> reduce needless wakeups.

I actually think it would be best if those work-arounds could be loadable a=
s
module, and the vendors of broken hardware can provide the modules that
document their broken design as well.

>=20
> I mean, I'd be more open to this if this was a frequent thing and the
> database for devices like this was just tooo large for the kernel to
> carry, but that's not the case here either: it's two devices afaik,
> and such an issue wasn't seen elswhere.

...two _more_ devices...

>=20
> Lennart
>=20
> =E2=80=91=E2=80=91
> Lennart Poettering, Berlin
> _______________________________________________
> systemd=E2=80=91devel mailing list
> systemd=E2=80=91devel@lists.freedesktop.org=20
> https://lists.freedesktop.org/mailman/listinfo/systemd=E2=80=91devel=20



--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/6052FB2B020000A10003FE1E%40gwsmtp.un=
i-regensburg.de.
