Return-Path: <usb-storage+bncBDBMLTW6VQDRBIUVTKCAMGQEUV5OSQA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ADEB36B0CD
	for <lists+usb-storage@lfdr.de>; Mon, 26 Apr 2021 11:40:51 +0200 (CEST)
Received: by mail-wr1-x445.google.com with SMTP id j16-20020adfd2100000b02901022328749esf18680878wrh.4
        for <lists+usb-storage@lfdr.de>; Mon, 26 Apr 2021 02:40:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619430051; cv=pass;
        d=google.com; s=arc-20160816;
        b=whAXJClaBMQZKmAYYC/ajghBTFtGt35U8CLjuZnFSQFX6Hjj05hNDmb377d2qozJPt
         jb3GZt4GEQOc9ejCjWvg7zvxUc9KieOic/Io3LFnKpoLe8JsjL2z06wP8oVpZPFwcZDd
         r2jaZlpFcMOuS3N0mn41oyWrO/ekjEU1RYiDRkBzoFcdS4HVLyYvyNI/NO5YiBmJt8kq
         HvuTQMvuaSFINuASDC8LIEsZV3rKocFw2/xfCS9j1Sw12y3X8Rao0PSSVLOVNqMNxOHW
         rlGwJ2K6EyS2UnTqMmn0Wi32vLVD0mNoVbhppOG8XXPSsdVsCr2E19ZcFbBKySpm1R0W
         8gOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:from:subject:cc:to:message-id
         :date:sender:dkim-signature;
        bh=iswZelAFynf1hhjFqKGPuErugeqg+TkUHoayyjL3/3A=;
        b=Zg/J7u/m+zv+7jmyg54BE9Ji2xj4RGqg/kKOn+8jGetlEIbu98/QKC8pIFpV0zgoz1
         sm4tf1qMVmE92XnW0mHsi8N0gtuFLJNztMIcBkrm0XZncwScWhhfqUA9oePE32U/OuWJ
         H7uD9lpOBy59jBuRMPywo3xCH1134iOaeTHGE3im2NBx2TUAoQgL3/OFHmp5t7trn6Gq
         DAJzPb5kehHoCWkDuaBcPJqdiudRpfgq7yC4g+AwwTZvcfozdExKLrPeIFUFHzoU4L5G
         5K9G/ORDHHNO6PwJPFtrZE7wC9//wN6/IskxASWzoZ2nhfv0fe7w1F5avTCqTVIJO/V9
         2JPQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=yeQC3Yz1;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:message-id:to:cc:subject:from:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iswZelAFynf1hhjFqKGPuErugeqg+TkUHoayyjL3/3A=;
        b=XHBBBrJqlHtpiB57k1ViGPuTB8zMZACyKyIIr7jgXXrvVSxw3gwPk4BER8ubEIYWPw
         45goJ4sOR/XLfJYXmsPN1brO+3HHvF8nEzvfotksqiNunEPjKLUozG1WgURCMO6v87Xo
         j5VsUEtxc6ThexlMMkrdO1gZrkzacuCCwPMJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:message-id:to:cc:subject:from
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iswZelAFynf1hhjFqKGPuErugeqg+TkUHoayyjL3/3A=;
        b=SxUzpr54adB3+PmZ0JErRuJaAjrAXnzrDwYeuB15B12EzTBGFJQYMLEU6a3JJurH8Z
         lKy5DESTJQCtphYxRpoRdkgBKi2rSW7FfVIyAWXxAv6NsKFitDnmhGHmEzyl62L4DrTf
         8KfS/kiITymkaIh21Q7G3EsNTK0VD2OqlypiYnGNLpimwBI6pYrVUN4h36miybdBztF4
         CKEjuyk+eaEdpjzPUndb+aW9vBQco+raKcj55TmbdHCeZm0zb1eKh0NC/H1vM+NFBwjI
         B2qTETAzsjiZQLM4EHY1OGTevjQ6IcXOQktV7nH6Tm5cC9+SNERcx9wCfZAL63ZPkLRS
         G0aQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531ENyITGtA5qV5BPdRVjjl6yaxhaJtvt8fm0VHpeJRT0unwgGcN
	iZ62WF/3jFUPwSlJItbjyyUJnw==
X-Google-Smtp-Source: ABdhPJyaJoGweCTEjrlcS5xlEtdiRDinnwlp9+FxMCXSrN47WPR9kHsWcNjaa0Ga631QVHrtePquMw==
X-Received: by 2002:a5d:590b:: with SMTP id v11mr12702541wrd.415.1619430050958;
        Mon, 26 Apr 2021 02:40:50 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:24d4:: with SMTP id k203ls7513743wmk.0.canary-gmail;
 Mon, 26 Apr 2021 02:40:49 -0700 (PDT)
X-Received: by 2002:a05:600c:4f07:: with SMTP id l7mr19657869wmq.53.1619430049790;
        Mon, 26 Apr 2021 02:40:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619430049; cv=none;
        d=google.com; s=arc-20160816;
        b=0O+1cYYKvFJDqks+KT5+thQQ3F48JuLIKkPMtk/BMrT/0ZEmGM57TF4Y0AgIV70LNe
         vWZhyBkZb00ghqOI93tSGuCbyYNSu2Lne86Oh9PIA+cAa/NJdxUtuzUOGIZc2f/lUKPS
         3O3pShD3F+JLTgh8xzT70k35ke96Ws8uKPTDkgwYxGNHEPWJCBHra4V2bh/Fl4+r/Naq
         QvuKcCZtw43sn3kPbD3uJM9Bkz2ogXqoMK+YQGN1Qbr4TjyfDBp5aoSMe5VtBOlMs0dI
         0vchsn/fjc9SF6msbqSpTUQ2HI9ywnS+e8gNx5mMfxvBR3dThn6vTznUf4fPoMsec/Dv
         M2Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:from
         :subject:cc:to:message-id:date:dkim-signature;
        bh=iswZelAFynf1hhjFqKGPuErugeqg+TkUHoayyjL3/3A=;
        b=bj1sudI2wdU6gcFIYRfnAuq9uAFKzR0UjVvB5GLkDDxZLm6rhFMbz2BS/MKTvtR/K+
         5gzZ/zPLQLtir3GYZQczajEuwqVzdPyICjfHk0R7HeqFr4z8xUGY/uGlUQfDsgla0DOR
         M19tlkM9ncNPYZNjM9K6Jpx2BKVFjPnWkN/AkD8vKeLqegodiL2jQS19Hd2JBnBt+W5Z
         2Uq6NLyp9MA3bJiSJFD8azzlrYMf6P4H0f9njLmPwx8E1l9obL+fw1xe/wQ4OKoxqZ83
         8w03sfQUIASbtCe8/RgtGq6u0zNKOBd3ZUU2j6oHwEmcbyJXuRZBOr0YGqoS3Acka0YD
         AxaQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@exactco.de header.s=x header.b=yeQC3Yz1;
       spf=pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) smtp.mailfrom=rene@exactcode.com
Received: from mx.exactcode.de (mx.exactcode.de. [144.76.154.42])
        by mx.google.com with ESMTPS id 76si1807544wrc.120.2021.04.26.02.40.49
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Apr 2021 02:40:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of rene@exactcode.com designates 144.76.154.42 as permitted sender) client-ip=144.76.154.42;
Received: from exactco.de ([90.187.5.221])
	by mx.exactcode.de with esmtp (Exim 4.82)
	(envelope-from <rene@exactcode.com>)
	id 1laxjZ-0007TB-4B; Mon, 26 Apr 2021 09:40:53 +0000
Received: from [192.168.2.131] (helo=localhost)
	by exactco.de with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.86_2)
	(envelope-from <rene@exactcode.com>)
	id 1laxfu-0002LJ-W2; Mon, 26 Apr 2021 09:37:08 +0000
Date: Mon, 26 Apr 2021 11:40:09 +0200 (CEST)
Message-Id: <20210426.114009.1308148203829096478.rene@exactcode.com>
To: hdegoede@redhat.com
Cc: stern@rowland.harvard.edu, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net
Subject: [usb-storage] Re: [PATCH] unbreak all modern Seagate ATA pass-through
 for SMART
From: Rene Rebe <rene@exactcode.com>
In-Reply-To: <c7f619f8-b5c5-2a27-9a9e-e757c5cf5802@redhat.com>
References: <0e698ca2-06e6-6ee7-1c39-a4352207a40e@redhat.com>
	<83FED4AF-2078-43BA-95A8-1EB44C13329D@exactcode.com>
	<c7f619f8-b5c5-2a27-9a9e-e757c5cf5802@redhat.com>
X-Mailer: Mew version 6.8 on Emacs 27.1
Mime-Version: 1.0
Content-Type: Text/Plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable
X-Spam-Score: -0.5 (/)
X-Original-Sender: rene@exactcode.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@exactco.de header.s=x header.b=yeQC3Yz1;       spf=pass
 (google.com: domain of rene@exactcode.com designates 144.76.154.42 as
 permitted sender) smtp.mailfrom=rene@exactcode.com
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

From: Hans de Goede <hdegoede@redhat.com>
Date: Mon, 26 Apr 2021 10:16:12 +0200

> Hi,
> =

> On 4/25/21 10:52 PM, Ren=E9 Rebe wrote:
> > Hi,
> > =

> >> On 25. Apr 2021, at 20:25, Hans de Goede <hdegoede@redhat.com> wro=
te:
> >>
> >> Hi Rene,
> >>
> >> On 4/25/21 5:02 PM, Rene Rebe wrote:
> >>> Alan Stern <stern@rowland.harvard.edu> wrote:
> >>>
> >>>> On Sun, Apr 25, 2021 at 02:15:36PM +0200, Rene Rebe wrote:
> >>>>> From: Greg KH <gregkh@linuxfoundation.org>
> >>>>> Subject: Re: [PATCH] unbreak all modern Seagate ATA pass-throug=
h for SMART
> >>>>> Date: Sun, 25 Apr 2021 14:00:26 +0200
> >>>>>
> >>>>>>> I would expect that more modern devices to work. Vendors usua=
lly
> >>>>>>> linearly allocate their product ids for new devices, and we c=
ould
> >>>>>>> allow list product ids higher than this Seven to unbreak more=
 modern
> >>>>>>> devices by default and limit the amount of device quirks need=
ed?
> >>>>>>
> >>>>>> Vendors do not allocate device ids that way at all, as there i=
s no
> >>>>>> requirement to do so.  I know of many vendors that seemingly u=
se random
> >>>>>> values from their product id space, so there is no guarantee t=
hat this
> >>>>>> will work, sorry.
> >>>>>
> >>>>> I did not say it is a requirement, just that they usually do sp=
eaking
> >>>>> of just this Seagate case. What is wrong with using that to
> >>>>> potentially significantly cut down the quirk list?
> >>>>
> >>>> You didn't read commit 92335ad9e895, did you?  It lists a large =
number =

> >>>> of Seagate devices that don't work with ATA pass-through, and th=
ree of =

> >>>> them have product IDs that are larger than 0xab03.
> >>>>
> >>>> Please check the facts before guessing about things that will ca=
use =

> >>>> problems for other people.
> >>>
> >>> I really don't appreciate the unfriendly tone on the linux kernel=

> >>> mailing lists (which is why for 20 years I never felt like contri=
buting
> >>> here mo),
> >>
> >> I'm sorry to hear that the admittently sometimes unfriendly tone
> >> on the kernel mailinglists have stopped you from contributing.
> >>
> >> Note that I do believe that things have gotten better recently.
> >>
> >> As for this email-thread, I don't really see anything wrong with
> >> Alan's reply here. You have been quite argumentative in this entir=
e
> >> thread about how things would be much better if they are done your=

> >> way.
> >>
> >> I cannot speak for the others but I certainly have gotten annoyed =
by
> >> the tone of your emails so far, I apologize if any of that annoyan=
ce
> >> has bleed through in the tone of my emails. I do strive to always
> >> stay professional (but as all of us I'm only human).
> >>
> >> <snip>
> >>
> >>>>>> What is wrong with just allowing specific devices that you hav=
e tested
> >>>>>> will work, to the list instead?  That's the safest way to hand=
le this.
> >>>>>
> >>>>> The problem is that out of the box it does not work for users, =
and
> >>>>> normal users do not dive into the kernel code to find out and s=
imply
> >>>>> think their devices sucks. Even I for years thought the drive s=
ucks,
> >>>>> before I took a closer look. If you long term want more new dev=
ices in
> >>>>> an allow list than the previous quirk list included (9 or 10 do=
es not
> >>>>> sound that many to me), ... whatever you prefer ,-) I would rat=
her
> >>>>> have 10 quirk disable list than potential many more white liste=
d the
> >>>>> next years to come. Maybe we shoudl simply restore the prevoius=

> >>>>> quirks.
> >>>>
> >>>> That's a possibility, and in the future we may do it.  But proba=
bly not =

> >>>> until the enable list grows to a comparable length.
> >>>
> >>> Yeah, why future proof it now, ...
> >>
> >> Perhaps look in the mirror and start with improving the tone of yo=
ur
> >> own emails ?
> > =

> > Thanks, I re-read them and find them pretty ok.
> =

> I was directly referring to your "Yeah, why future proof it now, ..."=

> remark here. But more in general I personally find the tone of your
> emails in this thread somewhat "combative".
> =

> I believe that in the end we all want the same thing which is to help=

> Linux users to get the best experience possible. It just seems that w=
e
> disagree on how to reach that goal.
> =

> Assuming that I have that correct, then I believe that there is a lot=

> of common ground between us; and I wish that we could approach this
> in a way where we try to find a solution which we can all agree on.
> =

> Ideally we could just wave a magic wand and make this all work,
> but unfortunately reality is not cooperating, so we need to come up
> with some pragmatic solution here.

I did not mean to be compative, however, as usual in real life we just
do not agree with all the reasoning ;-)

> > On further internet searching that there are at least 4 more driver=
s
> > listed on the smartmontools page that should work:
> > =

> > 	https://www.smartmontools.org/wiki/Supported_USB-Devices
> =

> That is a very interesting link thank you. That certainly advocates
> for a generic approach introducing a new US_FL_ATA_1X_OK and then
> adding quirks setting that for both your model and the 4 models
> listed there.
> =

> I would really appreciate it if you could submit a patch series
> for this. But if you don't want to do that then I'll put this on
> my own TODO list.

Maybe another week, however, as this is not the semantic I prefer that
would only cause more work for me with a bigger reverting patch in our
tree at the end, ...

<snip>

> > Given this, I will not continue spending my time on implementing
> > what you suggested and instead simply reverted this for our Linux
> > SDE as I believe results in the best out of the box experience
> > for our users:
> > =

> > 	https://svn.exactcode.de/t2/trunk/package/base/linux/uas-seagate.p=
atch
> =

> I've taken a quick peek at this and I see that you've also restored
> the old per model quirks to disable ATA pass-through on known to be
> broken models, good.

Yes, I reverted that, and added two more I found from the old email
thread that probably triggered the code change back in the day.

> Note that the list of broken models which you've added it missing the=

> 0xab25 and 0xab38 product-ids which according to:
> https://www.smartmontools.org/wiki/Supported_USB-Devices
> have broken ATA passthrough support with UAS.

Thanks, I added those two now as well.

> If I assume that these behave as some of the other Seagate drivers an=
d
> the bridge-chip crashes when trying to use ATA pass-through, then onc=
e
> these changes hit your users and customers you have just broken usage=

> of those disks together with your product. This nicely illustrates
> why we don't want to make this change in the mainline kernel.
> =

> Note depending on how important disk performance is for you
> an alternative approach might be to modify the Seagate product-id che=
ck
> to simply disable UAS on Seagate devices, that would be a lot safer.

We do not run a smartd by default, and I actually prefer a driver that
deaults to behave by the standard book, and get notified when
something goes wrong, instead of globally disallow listing a whole
vendor.

Maybe it is still an option to restore the updated unusual quirk list
entries, that way users with newer devices get their SMART back sooner
than later and this also encourages Seagate to continue producing
fully working devices, without hiding any ATA pass-through bugs by
default ;-) Given the hidden nature of this, it probably would take
more than a decade to ok-list working devices by interested users,
which hopefully going forward should hopefully be all new ones.

	Ren=E9

-- =

  Ren=E9 Rebe, ExactCODE GmbH, Lietzenburger Str. 42, DE-10789 Berlin
  https://exactcode.com | https://t2sde.org | https://rene.rebe.de
