Return-Path: <usb-storage+bncBDYJPJO25UGBBB427H6QKGQETRYOJUA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id A51592C3FE1
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 13:24:41 +0100 (CET)
Received: by mail-pl1-x648.google.com with SMTP id g11sf1649248pll.2
        for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 04:24:41 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606307080; cv=pass;
        d=google.com; s=arc-20160816;
        b=P3m5zlZBcLoa9hlUTs0u4L7MWAtc75900x4pG5ROVbLvubR6aBz27dSOao640fUcce
         m5ozZntUetCbxjb/ztHA5u9M7SHbSNJw5pHjODzXpq7WBZ9LYn6uo9nKGyBhbCzvgWOL
         8L857MGVKOFGOmJjQ2tJ1LWemqc+QlLKSbM73Fh4+kCgAs/i3CBTpZHuz7/YIMkWI9o1
         +Nh4beOBxBiTFGBMWzY1P6Tk+GgfO4zc2va/mEELPVbhSCARhL+NDHDggvNEd7POG2yd
         LxQ60rzou6vfWpcKIBldGnJ4kdY3bj94Ah5bqYAK8bt5Rwa+nrqLF1lIB6ajDLoMYdJg
         MzXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FC8YHWhu2BcxxCeXN/1p7QyXPEF6Bdwbl+8u2dFOISI=;
        b=l1qjWXmieFf9S/ha5c8Sgwwb6jRC7qHCSVZ710M3WMalVex51ko7C3fXx1auRC1dsN
         Wic/3crPvSY75T6IVMHkvRXJ+4r5NCra1S7+kTojIgrZiAxRy4+JRyYdmTWwahsarznj
         N8WHBoljmbnuDogr50JQOTfQNjmqjOi9eai5+1ByH4A1Lvx9CbiGkb64lJtZt584hU+Y
         LlF+cvTzmh6Y/QKFdUqyTjzzwgxmDXsyomnkJPNzvbPkOCU0gGe27mUBKj397v6WED/E
         lPnwv7R03JUr0FQm+X9Q+vCVEJWF8q/J+vDvdkDfDhQNMLyHTgCkY/PbMuMPfe1B8wOS
         kvRw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GyrkIL7r;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FC8YHWhu2BcxxCeXN/1p7QyXPEF6Bdwbl+8u2dFOISI=;
        b=hgs3pVtWA/io4qGOtMtYWdkPH6f0kICq+m4s2rXjs3SDIyZmLKNtkDqkPjSQhCJQiJ
         fBsCh3wCEiAcJZKXILvehEKsPGlj5vJJXSTRqsdix1DWCQb/nGhCsYObTtMPD9LHMkfM
         V6cj78a+eIOILTjexAgZrEE1GByZRQNZioyJg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FC8YHWhu2BcxxCeXN/1p7QyXPEF6Bdwbl+8u2dFOISI=;
        b=oF9OlwAbRoklVYPTML9Q56lS18GT67d4jVWEqxOK1aECWf+vw6AV90BXvLzXrxhfgP
         eDcY4lhuyqhPvSml+iFo6/b2E/QPEi8YvxMi0clX81Mtz/s6IE29i3PWpGI09af3M6v7
         OaLaNKONrjSs5V9jDYc26faMchKDTcwtqJz+UuOX08A5I8VOhz7RQHTo6XTmsFr/i2ZT
         kQfLxIuuDk6kwAIJUuQ6q2ae7/x91/sHXbyEsVPlyIEOhc6J6sJr3q6iDwwwcKI5kzOb
         i5VhdKGCzXRaxiumbWbDpRvVtYRcbUTgAp+QwAJOaC46JfCrw98XiF6lFGhvp8FTceLk
         pESA==
X-Gm-Message-State: AOAM531jCXblJfRKBejPIMeLv9nR2qaWfjx5IwVKmhhSzTsKrYfTwCzE
	7KDJ6sWr02p1BCkIGST7KQPzmw==
X-Google-Smtp-Source: ABdhPJx+kFff9B5bCWwSHKirM8d5uoFch4krR/vbPEHmcQSCU2f5Hu79zlG29IuEVbYWI8kBU4Ijtg==
X-Received: by 2002:a17:90a:4816:: with SMTP id a22mr4014742pjh.228.1606307079805;
        Wed, 25 Nov 2020 04:24:39 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:524:: with SMTP id 33ls1019419plf.6.gmail; Wed, 25
 Nov 2020 04:24:39 -0800 (PST)
X-Received: by 2002:a17:90a:cb8d:: with SMTP id a13mr3931353pju.155.1606307079048;
        Wed, 25 Nov 2020 04:24:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606307079; cv=none;
        d=google.com; s=arc-20160816;
        b=q/heY91T4GDR2J+1isTip3jpx7z8oGR6hmI2Bl8ppMbrEStFR2IxR8eFc6bkji4hOf
         MrosSd0/QqLstbUANy/ejdmunU/jp4zRb6ry3q9CormxKbUZyIKtMv5jKJ6y5tHVD4u7
         gjkOr8S16PIqFS2MnrcoZ4TvxfH4VvU3zk4HRzu+mWttT8X+qH/27YI0fkt4MOAOg7QL
         sRr+aHvVYTPZ2TSDKowmL1r0RsI1UaCYBAtogFwAZOefSlQVP3j/tPLQ++y63AxSv0z+
         xzpoQbOIpHPCdsM/zAxQv3I9+Fe8496IG+z37NW042lsF0Nd4Eng48TtjN1N5kZUmjnU
         eruQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=9IH0l2L/ELs04A0W/6GC4nhC0e+RvRGWJ1bAzD1+dFc=;
        b=HcKG55CM/CY6kjjMqcHKWOwgGCoD7T60Wr9oSmBvyCjs2udeVmGJ4bl+UYgtGA0daT
         5sWBNN/utXxBq6pOa9ldfBZleI399FiKKqZtXvqwcZiGq7ArglduaB+rlgzs9GQ9VU5e
         Z1An9yVYZYJpsVYowZYdmm9AeQo5LBPzSqOnJ2iQeFchD6c869kq4bdgCfrkd+g5lRHK
         kR7sT212tLo6X+AMhROksYGuapLKQfPg6t54ptrIi7jeNPYiGEMvcyK8ukVZFnOwYyxl
         pPvOs/ouhZP4npu8N9zospvapW076xNy8mXOXPMtOtRsFsyueP0D29D51HRaCTBJHvWM
         gofQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GyrkIL7r;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id i7sor936509pfq.13.2020.11.25.04.24.39
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 25 Nov 2020 04:24:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a62:7905:0:b029:197:f300:5a2a with SMTP id
 u5-20020a6279050000b0290197f3005a2amr2898775pfc.30.1606307078380; Wed, 25 Nov
 2020 04:24:38 -0800 (PST)
MIME-Version: 1.0
References: <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
 <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
 <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
 <20201123130348.GA3119@embeddedor> <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com>
 <202011241327.BB28F12F6@keescook> <a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com>
In-Reply-To: <a841536fe65bb33f1c72ce2455a6eb47a0107565.camel@HansenPartnership.com>
From: "'Nick Desaulniers' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
Date: Wed, 25 Nov 2020 04:24:27 -0800
Message-ID: <CAKwvOdkGBn7nuWTAqrORMeN1G+w3YwBfCqqaRD2nwvoAXKi=Aw@mail.gmail.com>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Kees Cook <keescook@chromium.org>, "Gustavo A. R. Silva" <gustavoars@kernel.org>, 
	Joe Perches <joe@perches.com>, Jakub Kicinski <kuba@kernel.org>, alsa-devel@alsa-project.org, 
	linux-atm-general@lists.sourceforge.net, reiserfs-devel@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-wireless <linux-wireless@vger.kernel.org>, 
	linux-fbdev@vger.kernel.org, dri-devel <dri-devel@lists.freedesktop.org>, 
	LKML <linux-kernel@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-ide@vger.kernel.org, dm-devel@redhat.com, keyrings@vger.kernel.org, 
	linux-mtd@lists.infradead.org, GR-everest-linux-l2@marvell.com, 
	wcn36xx@lists.infradead.org, samba-technical@lists.samba.org, 
	linux-i3c@lists.infradead.org, linux1394-devel@lists.sourceforge.net, 
	linux-afs@lists.infradead.org, usb-storage@lists.one-eyed-alien.net, 
	drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org, 
	linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com, 
	linux-scsi@vger.kernel.org, linux-rdma@vger.kernel.org, 
	oss-drivers@netronome.com, bridge@lists.linux-foundation.org, 
	linux-security-module@vger.kernel.org, 
	amd-gfx list <amd-gfx@lists.freedesktop.org>, linux-stm32@st-md-mailman.stormreply.com, 
	cluster-devel@redhat.com, linux-acpi@vger.kernel.org, coreteam@netfilter.org, 
	intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org, 
	Miguel Ojeda <ojeda@kernel.org>, tipc-discussion@lists.sourceforge.net, 
	linux-ext4@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, selinux@vger.kernel.org, 
	linux-arm-msm <linux-arm-msm@vger.kernel.org>, intel-gfx@lists.freedesktop.org, 
	linux-geode@lists.infradead.org, linux-can@vger.kernel.org, 
	linux-block@vger.kernel.org, linux-gpio@vger.kernel.org, 
	op-tee@lists.trustedfirmware.org, linux-mediatek@lists.infradead.org, 
	xen-devel@lists.xenproject.org, nouveau@lists.freedesktop.org, 
	linux-hams@vger.kernel.org, ceph-devel@vger.kernel.org, 
	virtualization@lists.linux-foundation.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Network Development <netdev@vger.kernel.org>, 
	linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, linux-sctp@vger.kernel.org, 
	linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, patches@opensource.cirrus.com, 
	linux-integrity@vger.kernel.org, target-devel@vger.kernel.org, 
	linux-hardening@vger.kernel.org, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GyrkIL7r;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Tue, Nov 24, 2020 at 11:05 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> On Tue, 2020-11-24 at 13:32 -0800, Kees Cook wrote:
> > We already enable -Wimplicit-fallthrough globally, so that's not the
> > discussion. The issue is that Clang is (correctly) even more strict
> > than GCC for this, so these are the remaining ones to fix for full
> > Clang coverage too.
> >
> > People have spent more time debating this already than it would have
> > taken to apply the patches. :)
>
> You mean we've already spent 90% of the effort to come this far so we
> might as well go the remaining 10% because then at least we get some
> return? It's certainly a clinching argument in defence procurement ...

So developers and distributions using Clang can't have
-Wimplicit-fallthrough enabled because GCC is less strict (which has
been shown in this thread to lead to bugs)?  We'd like to have nice
things too, you know.

I even agree that most of the churn comes from

case 0:
  ++x;
default:
  break;

which I have a patch for: https://reviews.llvm.org/D91895.  I agree
that can never lead to bugs.  But that's not the sole case of this
series, just most of them.

Though, note how the reviewer (C++ spec editor and clang front end
owner) in https://reviews.llvm.org/D91895 even asks in that review how
maybe a new flag would be more appropriate for a watered
down/stylistic variant of the existing behavior.  And if the current
wording of Documentation/process/deprecated.rst around "fallthrough"
is a straightforward rule of thumb, I kind of agree with him.

>
> > This is about robustness and language wrangling. It's a big code-
> > base, and this is the price of our managing technical debt for
> > permanent robustness improvements. (The numbers I ran from Gustavo's
> > earlier patches were that about 10% of the places adjusted were
> > identified as legitimate bugs being fixed. This final series may be
> > lower, but there are still bugs being found from it -- we need to
> > finish this and shut the door on it for good.)
>
> I got my six patches by analyzing the lwn.net report of the fixes that
> was cited which had 21 of which 50% didn't actually change the emitted
> code, and 25% didn't have a user visible effect.
>
> But the broader point I'm making is just because the compiler people
> come up with a shiny new warning doesn't necessarily mean the problem

That's not what this is though; you're attacking a strawman.  I'd
encourage you to bring that up when that actually occurs, unlike this
case since it's actively hindering getting -Wimplicit-fallthrough
enabled for Clang.  This is not a shiny new warning; it's already on
for GCC and has existed in both compilers for multiple releases.

And I'll also note that warnings are warnings and not errors because
they cannot be proven to be bugs in 100% of cases, but they have led
to bugs in the past.  They require a human to review their intent and
remove ambiguities.  If 97% of cases would end in a break ("Expert C
Programming: Deep C Secrets" - Peter van der Linden), then it starts
to look to me like a language defect; certainly an incorrectly chosen
default.  But the compiler can't know those 3% were intentional,
unless you're explicit for those exceptional cases.

> it's detecting is one that causes us actual problems in the code base.
> I'd really be happier if we had a theory about what classes of CVE or
> bug we could eliminate before we embrace the next new warning.

We don't generally file CVEs and waiting for them to occur might be
too reactive, but I agree that pointing to some additional
documentation in commit messages about how a warning could lead to a
bug would make it clearer to reviewers why being able to enable it
treewide, even if there's no bug in their particular subsystem, is in
the general interest of the commons.

On Mon, Nov 23, 2020 at 7:58 AM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> We're also complaining about the inability to recruit maintainers:
>
> https://www.theregister.com/2020/06/30/hard_to_find_linux_maintainers_says_torvalds/
>
> And burn out:
>
> http://antirez.com/news/129
>
> The whole crux of your argument seems to be maintainers' time isn't
> important so we should accept all trivial patches ... I'm pushing back
> on that assumption in two places, firstly the valulessness of the time
> and secondly that all trivial patches are valuable.

It's critical to the longevity of any open source project that there
are not single points of failure.  If someone is not expendable or
replaceable (or claims to be) then that's a risk to the project and a
bottleneck.  Not having a replacement in training or some form of
redundancy is short sighted.

If trivial patches are adding too much to your workload, consider
training a co-maintainer or asking for help from one of your reviewers
whom you trust.  I don't doubt it's hard to find maintainers, but
existing maintainers should go out of their way to entrust
co-maintainers especially when they find their workload becomes too
high.  And reviewing/picking up trivial patches is probably a great
way to get started.  If we allow too much knowledge of any one
subsystem to collect with one maintainer, what happens when that
maintainer leaves the community (which, given a finite lifespan, is an
inevitability)?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CAKwvOdkGBn7nuWTAqrORMeN1G%2Bw3YwBfCqqaRD2nwvoAXKi%3DAw%40mail.gmail.com.
