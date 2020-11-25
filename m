Return-Path: <usb-storage+bncBCOLPU5Q4MDBB5547P6QKGQEENVUZEI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E1642C4AE3
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 23:45:12 +0100 (CET)
Received: by mail-qt1-x846.google.com with SMTP id i20sf3485403qtr.0
        for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 14:45:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606344311; cv=pass;
        d=google.com; s=arc-20160816;
        b=Us8A8MId5jlRdppNjQe0v1w35mhs0gSRqsX86nZsfNkbXahnuvx4QV6qZnAsQ+3fxX
         tHKteIA2ax+f9ft/BayeEsxBgc4Pzebc5o22ZVvYBJl6A73ICk+b8aLpgzBUeEFnFjq5
         Mz+da02xZELu67D8gLFnS3Awqpa/xLEQ3kKPj2idCbDIzWx3eeZBjLH+dFHuggx/DHIJ
         sn0FYL7NBxZEiGehgbd39Vc6pm0ZYhBHyoUPxgCZSnr+z6h5z9Q3nHvay+5C5z7NHbmT
         PY53HnJEmZG0A/SEKUZM+xRej8W5AyFZHWtSnfyAXnXxrgFQu3yIimxJh/y5j2cs3ZCO
         WT1w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=a96YI1HBmOfi3kFtk2XChvE9JxkqRFRpKBO5TvdmZlI=;
        b=FPTqX/f6q7KIgFgzlB+sIHzvrBDQRF7AmaU4rFEucUgmjBocYIsUTrvyoiwmoIZIXm
         WuZRe/zEzuMQCQO/wxDBCn70l3SA+iaELqlgfWRfhSOdl1ek6J6UKPYfB9yw8B9Ht3gI
         Q8DdHmErwg3iNw311MGrdTehrJZA523btDt4XsIwdIpKwcZbdJ4vU2xBLZmdNPSTMrma
         isYRcuWqx9jFgxWQrAmKHuA6ljGQXAMq/cx7eQFNz6mhm1acF76YCI93JDGa52Gsqm4q
         OPHtKxy0ch9l6N+d5EYTmyvz+Y+4Wt4Rbs1DDB2uu2iPLa2HotxPF9TCCyCSJ7tyHHsg
         YuWA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mE3/9/w1";
       spf=pass (google.com: domain of ecree.xilinx@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=ecree.xilinx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=a96YI1HBmOfi3kFtk2XChvE9JxkqRFRpKBO5TvdmZlI=;
        b=UuFK3I/gz6G3CmQD7SdGaLjY7jbBd10i7WMTjd3qJyDjRz7JQgMyZzUf/JC7xY3uZk
         SoZavsZBKzkKAeSguHk3OmrDuR4R5l4B32Alplq1u7EJL27IaCVDymakVISKvK1pULeI
         VtPOtcek03vJkaF+riqrhOO3caEP8AG3f5+tw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=a96YI1HBmOfi3kFtk2XChvE9JxkqRFRpKBO5TvdmZlI=;
        b=ZuiWZlC4emV9iVubJKkeD9XYYZNmEl4lCk2rTrp46YH5ksepw7/JEfthhNCzAkPb/+
         noAFE2DkTzh/JhLqmCE7mMat86XVL0Rd4rf4WeQhR5fmQIqCyhuCbP4DYuDgHLXS1e21
         5rCIDB7xvBJhCC1rtlIVFmJOt3YVI9b3a8+0cK1nVt7bjrO1Z2K0OP2fIGeR4C5f5syP
         F1k60rqRIZ51kY1i8yGV0TNI8j8eZG2re/CjWIudXO0/mWfMcG/rC4wUCfwW0WyYiwyi
         WKwD8C6R+OurcQqilI12Abi+xl0Ac9RcA0tymnjc57l9iczYwf/C2MH+6LwXJFAYDiXz
         fggQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM533th/9rVy4ty5J3dmubHibFD7st0n7Mss3OD3TeIyKqZsoIoN6a
	QKGRV8ntvH3OdcN0FX3uYMe8Vg==
X-Google-Smtp-Source: ABdhPJzg3B6vATv18TrAHLfyBKogFMEjPADLnEXPGWAWqNqGFoSprrZl+Y8RVkNtpYTst1LnCEwBBA==
X-Received: by 2002:ae9:e80d:: with SMTP id a13mr408904qkg.140.1606344311275;
        Wed, 25 Nov 2020 14:45:11 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:572:: with SMTP id p18ls136707qkp.0.gmail; Wed, 25
 Nov 2020 14:45:11 -0800 (PST)
X-Received: by 2002:a37:4895:: with SMTP id v143mr333220qka.159.1606344310930;
        Wed, 25 Nov 2020 14:45:10 -0800 (PST)
Received: by 2002:a05:620a:24ce:b029:173:96ae:c3b4 with SMTP id m14-20020a05620a24ceb029017396aec3b4msqkn;
        Wed, 25 Nov 2020 14:44:40 -0800 (PST)
X-Received: by 2002:adf:e5cb:: with SMTP id a11mr135801wrn.15.1606344279724;
        Wed, 25 Nov 2020 14:44:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606344279; cv=none;
        d=google.com; s=arc-20160816;
        b=f1ubsjNzUO31K7fPGLzJBGF+B2aDRh+j4Kspaaxx4ZXF8QPYRFU2V5LOPpNTgNcecN
         rypBdbErbtXWmvB12YVq5P5swp8ZdSYNAx71/w1byRoh/iw/ERJgYR8u19WyLun7LdIB
         Fqd4rBFJf2fgAnaJjb+ZDfCfboO4dTCIKgTa8d9o1vXCVfTm5gqSWurS/l2mBfEPCEkg
         BHT1ibybE6HCPoTGcqN+5TSTVlIOSRwEYmg9TtghcEo6W9R2oMB5fmOz6J2M2H0HqVAt
         mV9c/O3N/TKMdxn4gJGxkhQtbpAhBXNyiNek/Tfg3BO8gmUuBFmxFd66dM4aP0LXHBmm
         nlGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=mMrMdknFbsC77SFRvwwD3pm1cwl3V2MP65kzVJE6tY4=;
        b=lJZtg/xvhRwgeW1b6FUD4f8cIShWn8pWyGiucOBbyxLY5SWVLJvgabDqDU7bR67g/g
         UKSP62kwOTkCEJYgTIf5U1TjfLveFvCZvzcK13qgiG1kd4JB3CoCwMYyT7KcgygtFEhr
         EBsd9QJ/JMLHqzIA12ImETOiTXI3txREIDCfHvCZMZoMXeXNKp/RNVBMi4NN9r72cgfU
         VojLFGT/Vr7t4HtkCIsjs2e2zVH0D15RfT9KUszOhOsWnqHs/1DJ2C2knVeaQsQ/Re3Q
         QN+ONCy2ietI9nRy58gQudG07024i7qKxKNT5A4sVBFwfoitC/2dJIO+p8v/4ImTFQ5N
         M6Kw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mE3/9/w1";
       spf=pass (google.com: domain of ecree.xilinx@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=ecree.xilinx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id b81sor1998324wmd.3.2020.11.25.14.44.39
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 25 Nov 2020 14:44:39 -0800 (PST)
Received-SPF: pass (google.com: domain of ecree.xilinx@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a7b:cf0a:: with SMTP id l10mr6364382wmg.103.1606344279394;
        Wed, 25 Nov 2020 14:44:39 -0800 (PST)
Received: from [192.168.1.122] (cpc92720-cmbg20-2-0-cust364.5-4.cable.virginm.net. [82.21.83.109])
        by smtp.gmail.com with ESMTPSA id h15sm6411655wrw.15.2020.11.25.14.44.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2020 14:44:38 -0800 (PST)
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, alsa-devel@alsa-project.org,
 amd-gfx@lists.freedesktop.org, bridge@lists.linux-foundation.org,
 ceph-devel@vger.kernel.org, cluster-devel@redhat.com,
 coreteam@netfilter.org, devel@driverdev.osuosl.org, dm-devel@redhat.com,
 drbd-dev@lists.linbit.com, dri-devel@lists.freedesktop.org,
 GR-everest-linux-l2@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org,
 keyrings@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-acpi@vger.kernel.org, linux-afs@lists.infradead.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 linux-block@vger.kernel.org, linux-can@vger.kernel.org,
 linux-cifs@vger.kernel.org,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-decnet-user@lists.sourceforge.net,
 Ext4 Developers List <linux-ext4@vger.kernel.org>,
 linux-fbdev@vger.kernel.org, linux-geode@lists.infradead.org,
 linux-gpio@vger.kernel.org, linux-hams@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-i3c@lists.infradead.org,
 linux-ide@vger.kernel.org, linux-iio@vger.kernel.org,
 linux-input <linux-input@vger.kernel.org>, linux-integrity@vger.kernel.org,
 linux-mediatek@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>,
 linux-mmc@vger.kernel.org, Linux-MM <linux-mm@kvack.org>,
 linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org,
 linux-rdma@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
 linux-security-module@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org,
 linux-watchdog@vger.kernel.org,
 linux-wireless <linux-wireless@vger.kernel.org>,
 Network Development <netdev@vger.kernel.org>,
 netfilter-devel@vger.kernel.org, nouveau@lists.freedesktop.org,
 op-tee@lists.trustedfirmware.org, oss-drivers@netronome.com,
 patches@opensource.cirrus.com, rds-devel@oss.oracle.com,
 reiserfs-devel@vger.kernel.org, samba-technical@lists.samba.org,
 selinux@vger.kernel.org, target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, usb-storage@lists.one-eyed-alien.net,
 virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org,
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 xen-devel@lists.xenproject.org, linux-hardening@vger.kernel.org,
 Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda
 <ojeda@kernel.org>, Joe Perches <joe@perches.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com>
 <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
 <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com>
 <fc45750b6d0277c401015b7aa11e16cd15f32ab2.camel@HansenPartnership.com>
 <CANiq72k5tpDoDPmJ0ZWc1DGqm+81Gi-uEENAtvEs9v3SZcx6_Q@mail.gmail.com>
 <4993259d01a0064f8bb22770503490f9252f3659.camel@HansenPartnership.com>
 <CANiq72kqO=bYMJnFS2uYRpgWATJ=uXxZuNUsTXT+3aLtrpnzvQ@mail.gmail.com>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <44005bde-f6d4-5eaa-39b8-1a5efeedb2d3@gmail.com>
Date: Wed, 25 Nov 2020 22:44:35 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CANiq72kqO=bYMJnFS2uYRpgWATJ=uXxZuNUsTXT+3aLtrpnzvQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ecree.xilinx@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="mE3/9/w1";       spf=pass
 (google.com: domain of ecree.xilinx@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=ecree.xilinx@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 25/11/2020 00:32, Miguel Ojeda wrote:
> I have said *authoring* lines of *this* kind takes a minute per line.
> Specifically: lines fixing the fallthrough warning mechanically and
> repeatedly where the compiler tells you to, and doing so full-time for
> a month.
<snip>
> It is useful since it makes intent clear.
To make the intent clear, you have to first be certain that you
 understand the intent; otherwise by adding either a break or a
 fallthrough to suppress the warning you are just destroying the
 information that "the intent of this code is unknown".
Figuring out the intent of a piece of unfamiliar code takes more
 than 1 minute; just because
    case foo:
        thing;
    case bar:
        break;
 produces identical code to
    case foo:
        thing;
        break;
    case bar:
        break;
 doesn't mean that *either* is correct =E2=80=94 maybe the author meant
 to write
    case foo:
        return thing;
    case bar:
        break;
 and by inserting that break you've destroyed the marker that
 would direct someone who knew what the code was about to look
 at that point in the code and spot the problem.
Thus, you *always* have to look at more than just the immediate
 mechanical context of the code, to make a proper judgement that
 yes, this was the intent.  If you think that that sort of thing
 can be done in an *average* time of one minute, then I hope you
 stay away from code I'm responsible for!
One minute would be an optimistic target for code that, as the
 maintainer, one is already somewhat familiar with.  For code
 that you're seeing for the first time, as is usually the case
 with the people doing these mechanical fix-a-warning patches,
 it's completely unrealistic.

A warning is only useful because it makes you *think* about the
 code.  If you suppress the warning without doing that thinking,
 then you made the warning useless; and if the warning made you
 think about code that didn't *need* it, then the warning was
 useless from the start.

So make your mind up: does Clang's stricter -Wimplicit-fallthrough
 flag up code that needs thought (in which case the fixes take
 effort both to author and to review) or does it flag up code
 that can be mindlessly "fixed" (in which case the warning is
 worthless)?  Proponents in this thread seem to be trying to
 have it both ways.

-ed

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/44005bde-f6d4-5eaa-39b8-1a5efeedb2d3=
%40gmail.com.
