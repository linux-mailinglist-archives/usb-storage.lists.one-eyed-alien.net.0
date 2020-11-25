Return-Path: <usb-storage+bncBCOLPU5Q4MDBBFOF7P6QKGQEOPUFZWI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-wr1-x445.google.com (mail-wr1-x445.google.com [IPv6:2a00:1450:4864:20::445])
	by mail.lfdr.de (Postfix) with ESMTPS id E75822C4B29
	for <lists+usb-storage@lfdr.de>; Thu, 26 Nov 2020 00:02:45 +0100 (CET)
Received: by mail-wr1-x445.google.com with SMTP id n1sf3887wro.22
        for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 15:02:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606345365; cv=pass;
        d=google.com; s=arc-20160816;
        b=OcvqTyildfeMuQY82Thxrm06loM3Xl3upCYGrL+w1xJ7d3MSlvo0HaL095CzaYPeng
         NX8SgIMxycwViLnpH/FC5vLOuHvbmd3ezUUj1KIGN2urSo701NWHHds9aeNw9pZSaU7Y
         w0gtDxNdHCv9WIcv/ze8J06qf1qHYARkXaS54ExDOH0l8BipjEFSRf47YXRaNs+NfCl+
         DHLjd4ur2zwCGZ9JsPFeyqVAhVmN5w+gFGL+F+kYg9sg7k1AP7wy9Ug89UICnU5Z2IS1
         kykyfX/k2bj6pB2efzNxfUdWe5Gvn8VtwgrdlKTT/nHzrKiUYL8sCBUJrlkVGMTIGryz
         rbNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=eLIj5ldMfnXDFUxehGJcahQLTy4NAqroAghNqOquna4=;
        b=HCa9OnSi56TLISbSsvg9iX89GVr+5cBdAFrYnyHYK2/oOvMjuWgQCoV0XyHwFBvboQ
         of2NfmK2vSqtru8rx87hMJy4q6krVdfotOaxzSeCO53FHhFGDKdU74Jeuqwd5O8cqipg
         aMo8WyQeXvYlZEqWuAcQfwgONpxlTZx1BzSnqPpOwOdKCDq3s5hLxhlQregQ/4vdSXNg
         W/PMoWLuXzmdlwYsvu+tTEx1P0otO/BzdlaSPO1p1U4yo3CDa52HN9tvcFgngKil008+
         0dPuBsMAMNNv3Q5h736wTvrrOj7kUqU0nfFihfrNSHPoYmbOGCe1Q81i90FOcoCO1pJP
         6RwA==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cK16XuXE;
       spf=pass (google.com: domain of ecree.xilinx@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=ecree.xilinx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eLIj5ldMfnXDFUxehGJcahQLTy4NAqroAghNqOquna4=;
        b=DUCvNqalrmJ4Zgi3pfnSjDfqlLh6PJkUrE/j+E/ui0Qmy7bv93rn7R262UyWyqQED2
         04zI5tbPsmRq6DQoc9QjVafbQkV8XgOJRbx52NB/hT8HJh846qkSpV0KPCGuwcYIQaP1
         swmC4qsxqv3fox5NCrhEl5TK8h7lSXq2Y7D5U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eLIj5ldMfnXDFUxehGJcahQLTy4NAqroAghNqOquna4=;
        b=Zi2Vj+5oBhRUhf/65/fCp5OhXCT1tBMbvzlvMQVt42wQmBt1T8rvHc4Rwqt8WlUmqe
         A3CSaP4pP5Uvtg3N1RHtZ06C5wxxh2WyGfRSTwb3aQcbtf7SL14REo/j3BygTCsYIQGS
         d7wxd18fdnCl5ku5PBLNqL5HuSRIdLYMHHFpHdAxavZ977fqHaIExRdJ/MkUIM8/0yxy
         O8694YD3tSUs0+cMirnRkV+U9U7/oQRRgICly1dXoOO2uoF/Y5vH76SbMeWaYd8rfmVS
         EUQ6w6j2eeI5UPElGeec3+8J/PDHggHyCgi5sriG5g+qogD+y6UaxJvme+tawzJNV/K4
         e1cA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM532knzA5AKazO2yJiRC0Gnia+9rD29u/GSomNan25brNC3AzQ63j
	J3AWMlICbihr+WVClYh0yVp5mA==
X-Google-Smtp-Source: ABdhPJwZY2yPaZcbOyDYpUYOBObPRSxy1Hf/2lFlfb5OnJjLaBAz4charz+M6QbwIodKszktbURMXw==
X-Received: by 2002:a1c:790c:: with SMTP id l12mr6124916wme.47.1606345365626;
        Wed, 25 Nov 2020 15:02:45 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a1c:a4c2:: with SMTP id n185ls6569wme.2.canary-gmail; Wed,
 25 Nov 2020 15:02:44 -0800 (PST)
X-Received: by 2002:a1c:2c88:: with SMTP id s130mr6331377wms.79.1606345364505;
        Wed, 25 Nov 2020 15:02:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606345364; cv=none;
        d=google.com; s=arc-20160816;
        b=O+WAlLBkauZUpRJa+Bao275/cKcU8jQzsr0AWTjIBsd6V7+fwKk9Rwsd3Mykgq4kJL
         POyduzlroGQ8nE+0GSMbAaAaYfsJPuwpVpkN1o530mUO9sLZY+ujS8RfpeQkUHQMXVqx
         sMN9fDoTlGXr2okzpC+FL7+dJrUGtqWY+ch9u/bih71CJe4JyrL/ph++FZwAx5urlKER
         H4CbAwJmNVQUvI0L3W0uXbJRJvURgfPRvxmJyGSN9PXpTB8o0Qsc5Wv+CXy7/BBAab+a
         bO13pf/HzpodJZFgdkSsv1KUNR175CxPfktU83gjaYv1zvxpRhWu0XkHM/N4FBVGGMVn
         wc+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ha42UWMtlXOL8kfvC1XpFKttY73p7G2gxviD5bIo2Ac=;
        b=fMJtYTfgeHmKDnlZsTMddj8j7xMkoZ/2fSLcLoLXagqK5PG0TMz1I6pSYdOe5Krhby
         If1FlKDCnrz03QlUKFp8P945R6eJbVpu9WsLX9A1wLY3Q0z078aktpdJZZtyLWCZEL4s
         DwNvewkxxxel2BfYJa7FTUckXIMuCxRn7YT/BUBEeGBxZYEsU0CSVui8woSfZTuBC2hs
         QSGR4WtzzIDvdP4RhIPNe9LY9zAiEutGBe2R7j2WUQQNdeHNs94KgexrDFNjxcTuaHDY
         AOzbXj+BPQoQ+IohfYvo62TUXMuCMTKPKtr/Ml+Ik6ZggCDm9a4QSe7kGx1g86rc/8Cx
         Xt9g==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cK16XuXE;
       spf=pass (google.com: domain of ecree.xilinx@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=ecree.xilinx@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id u12sor1943368wrm.54.2020.11.25.15.02.44
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 25 Nov 2020 15:02:44 -0800 (PST)
Received-SPF: pass (google.com: domain of ecree.xilinx@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a5d:474b:: with SMTP id o11mr180470wrs.235.1606345364309;
        Wed, 25 Nov 2020 15:02:44 -0800 (PST)
Received: from [192.168.1.122] (cpc92720-cmbg20-2-0-cust364.5-4.cable.virginm.net. [82.21.83.109])
        by smtp.gmail.com with ESMTPSA id u129sm5552667wme.9.2020.11.25.15.02.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Nov 2020 15:02:43 -0800 (PST)
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: Kees Cook <keescook@chromium.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Jakub Kicinski <kuba@kernel.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, alsa-devel@alsa-project.org,
 amd-gfx list <amd-gfx@lists.freedesktop.org>,
 bridge@lists.linux-foundation.org, ceph-devel@vger.kernel.org,
 cluster-devel@redhat.com, coreteam@netfilter.org,
 devel@driverdev.osuosl.org, dm-devel@redhat.com, drbd-dev@lists.linbit.com,
 dri-devel <dri-devel@lists.freedesktop.org>,
 GR-everest-linux-l2@marvell.com, GR-Linux-NIC-Dev@marvell.com,
 intel-gfx@lists.freedesktop.org, intel-wired-lan@lists.osuosl.org,
 keyrings@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 linux-acpi@vger.kernel.org, linux-afs@lists.infradead.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 linux-atm-general@lists.sourceforge.net, linux-block@vger.kernel.org,
 linux-can@vger.kernel.org, linux-cifs@vger.kernel.org,
 "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, linux-decnet-user@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, linux-fbdev@vger.kernel.org,
 linux-geode@lists.infradead.org, linux-gpio@vger.kernel.org,
 linux-hams@vger.kernel.org, linux-hwmon@vger.kernel.org,
 linux-i3c@lists.infradead.org, linux-ide@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-input@vger.kernel.org,
 linux-integrity@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-media@vger.kernel.org, linux-mmc@vger.kernel.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 linux-mtd@lists.infradead.org, linux-nfs@vger.kernel.org,
 linux-rdma@vger.kernel.org, Linux-Renesas
 <linux-renesas-soc@vger.kernel.org>, linux-scsi@vger.kernel.org,
 linux-sctp@vger.kernel.org, linux-security-module@vger.kernel.org,
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
 Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda
 <ojeda@kernel.org>, Joe Perches <joe@perches.com>
References: <cover.1605896059.git.gustavoars@kernel.org>
 <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook>
 <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook>
 <CAKwvOdntVfXj2WRR5n6Kw7BfG7FdKpTeHeh5nPu5AzwVMhOHTg@mail.gmail.com>
 <202011241324.B3439A2@keescook>
From: Edward Cree <ecree.xilinx@gmail.com>
Message-ID: <99a9ffd7-6356-b81d-6e08-7ed74b6fb82c@gmail.com>
Date: Wed, 25 Nov 2020 23:02:40 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <202011241324.B3439A2@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ecree.xilinx@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=cK16XuXE;       spf=pass
 (google.com: domain of ecree.xilinx@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=ecree.xilinx@gmail.com;       dmarc=pass
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

On 24/11/2020 21:25, Kees Cook wrote:
> I still think this isn't right -- it's a case statement that runs off
> the end without an explicit flow control determination.

Proves too much =E2=80=94 for instance
    case foo:
    case bar:
        thing;
        break;
 doesn't require a fallthrough; after case foo:, and afaik
 no-one is suggesting it should.  Yet it, too, is "a case
 statement that runs off the end without an explicit flow
 control determination".

-ed

--=20
You received this message because you are subscribed to the Google Groups "=
USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.=
one-eyed-alien.net/d/msgid/usb-storage/99a9ffd7-6356-b81d-6e08-7ed74b6fb82c=
%40gmail.com.
