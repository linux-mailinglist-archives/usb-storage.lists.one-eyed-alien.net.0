Return-Path: <usb-storage+bncBDRZHGH43YJRB6O3636QKGQER7RBO5Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5B22C35DD
	for <lists+usb-storage@lfdr.de>; Wed, 25 Nov 2020 02:06:02 +0100 (CET)
Received: by mail-qk1-x745.google.com with SMTP id b11sf549903qkk.10
        for <lists+usb-storage@lfdr.de>; Tue, 24 Nov 2020 17:06:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606266361; cv=pass;
        d=google.com; s=arc-20160816;
        b=ynHF0l0R8UUoBtS6V9KmDOE/JvJi8nOGqQRSTLDvvQHSwXNfYEr/oQ1Ys1GsluwPwO
         ee3NbzDaPBJKgKof+DZ8LrbInBKpCj4Z2eCsN9dBX7BK3sBjNLRXUi+BAPnQlA25dkTn
         DAsc5gJYW1ldM7xWmP0rr+R/7mE7N9FwweZ9yE/V/w0ZzgUlVGRvTTJW2q9WpCyVkFF2
         6xo5a3Ygi5swf8akNfiveRpUnXl8Rntlq9IcFRxjiptBroQsxbBtits9couuAT0RSczj
         6W8U7U+M62gJ5corHQJKltxlOrg/Ei33SBVsO8GmQFDQYWl/aCtqJSzssiyhHwdFsy14
         wZZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Oliz2iFp/yQIWwJiY8HsEH+abkgYLNtQKHANhBSB6ZQ=;
        b=GXzN9vWuNGYd/SX3ZXGQ/bA1cLJzAqa+rwVqfKu3UdXI//zk01Jr+Lq9Ra0rLuNmP9
         PWqJnLdmiFops0A977RCX8XBqq5bWkFpVHUBA6jD8j0Vkeos3GjyIrc10r8nYGUkwKLe
         HMo0ncNy2w5sN5yx+1wfyQyBvRDuEOmiyNsckwxoPPhAynjEL67OtUxNLIoUYBDIu1L2
         ANYk1mpBR1Z+YozMzZK98j7/kahREbJXP1IuzCjwVjCgc9n1zpFD4jSCu4mkmOoAjjep
         xnpRKc27tAHOeBriAnksyKBQhOZLbK8lfWMwQUu7F9Arcy9D16VNJ6GKH6UOvA13uvp7
         lcpg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PLHqMkuV;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oliz2iFp/yQIWwJiY8HsEH+abkgYLNtQKHANhBSB6ZQ=;
        b=OSpU7YtbvvBeBvPafWKXk6F8J17SVYaJOtc45ex2jHOxC3pUCK3Xb6zZHg3Gn/646f
         3rMhfQWl+WUNBO78ddNhP2yz2kFkHgJw6zsnnhQc0VB9gIENp6R2D6LfTri3R4vzM1R+
         iNo+IVsOfe7eHcEmsFPmplblogaBuF91ulxcs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Oliz2iFp/yQIWwJiY8HsEH+abkgYLNtQKHANhBSB6ZQ=;
        b=onZbGCchmtJjr84cOE2h/iTzIxFomX5egxLPhg10A0kcxsGN0EmYzyI83PVwBcpqU2
         B1epaSVwQaeY+1QCY0p6/2TN8pmfFmdoF2BUt+8KVh4J/ggDgI1rfuk3qhh6YKEirwbu
         g/wKtdab7hG4TtqVo3rOP4qsO8Ji19W4SsyzbSCC2omqvDClnmnqyoOB3S38KgN8Ix1j
         s9fg9p7GF4fVl7KWsQS9osNKDZ1L1bPvLYdsI5QWhlOCje1jZqAdhKDVMbQomks0kkIO
         QfMYjZzkYtS9QXDQo1QHULjtwjLES4XHQqmNbojf4lPZ0mQVJBg0p7CxeZvMnsAinEoQ
         gu3w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM531z9ExsMR4hHci4LdRsb/T5BCWlOs8pKEEtVNe4g3E0bV/vRNUt
	ApmG/LWC7htjijqe93P+R97fUQ==
X-Google-Smtp-Source: ABdhPJw2JuRkgngI0r1I/rTk0dd4++zFLh8JuY6e8/wBQw83unTcHC1LHyXo+/PKzL74iXTo+OnhDQ==
X-Received: by 2002:a25:911:: with SMTP id 17mr1126944ybj.30.1606266361298;
        Tue, 24 Nov 2020 17:06:01 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:bcf:: with SMTP id 198ls364597ybl.10.gmail; Tue, 24 Nov
 2020 17:06:00 -0800 (PST)
X-Received: by 2002:a25:1b86:: with SMTP id b128mr1304643ybb.174.1606266360714;
        Tue, 24 Nov 2020 17:06:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606266360; cv=none;
        d=google.com; s=arc-20160816;
        b=KqSKpIWg94KBofa+KcnEWy9pSIpWsJZgQTNI4qNY84sMbAiOmnwBtXusVg/S8bMvVa
         EBNaapAThCy+jRu5vsVT6hoBoHgdy8GntogAVyLD9D3ciN0ME5s9gknQTwxtzuvxe4kP
         JLZbNgv46uXPGoTozAxkJI/38YRDXKfdEVuVWJajFF81jyLfgTbDxIonWdN1FL0F6mvr
         h56IVeBel4UxKIGpVG/1M9dOch/UXH5k9Zb90Y2SuPBrdBYDj9wHHuM3d8q5+UU1lEBc
         W2hJblHEUaEUXhBdnBKD1DFYaT6MeJMc6Xa8JsuLjZv8vBGkTuS/ln0VGbSWZo/bEbIH
         QN1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=44pFzPZOXy9WMyxuVZ4PJwmHwfPvC91GWhNSdpkVBXk=;
        b=hcXiV83Wt7GgBdyN201KkohIxmd6XkplCG7W+IfIGNiCxNYtGZsL185XKo25UII768
         REAnrhvu0w/AQcy56jppqwNY1IBSlgovdoXAsUuBeJQSA07wRjcllv5ceJZU4q3GlcEY
         QL7uQFdoikvBYtHg209GeGWs4251GuS5Rj/qftAHJ/hJIjaN4inzjfZ1bsCRPxdkS/KS
         wHyv2/CqAMGNmBJmf+JOYLKPI1mJX2Tdn11Tlf7TWKlQXlUb5/CGpQL3uSJxyV8nPV6z
         9XPtMQs0tFd0OeKz5TxJo5ANAiIoso7AJeQp5Fs6v7d1BXepnbCf2xr6e4FEhpu4gUf7
         dRUA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PLHqMkuV;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id s6sor143027ybf.114.2020.11.24.17.06.00
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 24 Nov 2020 17:06:00 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a25:aac5:: with SMTP id t63mr1046305ybi.22.1606266360499;
 Tue, 24 Nov 2020 17:06:00 -0800 (PST)
MIME-Version: 1.0
References: <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <ca071decb87cc7e905411423c05a48f9fd2f58d7.camel@perches.com>
 <0147972a72bc13f3629de8a32dee6f1f308994b5.camel@HansenPartnership.com>
 <d8d1e9add08cdd4158405e77762d4946037208f8.camel@perches.com>
 <dbd2cb703ed9eefa7dde9281ea26ab0f7acc8afe.camel@HansenPartnership.com>
 <20201123130348.GA3119@embeddedor> <8f5611bb015e044fa1c0a48147293923c2d904e4.camel@HansenPartnership.com>
 <202011241327.BB28F12F6@keescook> <alpine.LNX.2.23.453.2011250859290.15@nippy.intranet>
 <CANiq72nUt57u5DG9rH=DB0DzQH7U6-QbG-2Ou+PyCY=p=_Ggag@mail.gmail.com> <alpine.LNX.2.23.453.2011251022550.14@nippy.intranet>
In-Reply-To: <alpine.LNX.2.23.453.2011251022550.14@nippy.intranet>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 25 Nov 2020 02:05:49 +0100
Message-ID: <CANiq72m2kGxSy2E9jgYE4_xRV6h9rFqiJP25KXs_5ObYnH_nmA@mail.gmail.com>
Subject: [usb-storage] Re: [Intel-wired-lan] [PATCH 000/141] Fix fall-through
 warnings for Clang
To: Finn Thain <fthain@telegraphics.com.au>
Cc: Kees Cook <keescook@chromium.org>, 
	James Bottomley <James.Bottomley@hansenpartnership.com>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, Joe Perches <joe@perches.com>, 
	Jakub Kicinski <kuba@kernel.org>, alsa-devel@alsa-project.org, 
	linux-atm-general@lists.sourceforge.net, reiserfs-devel@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-wireless <linux-wireless@vger.kernel.org>, 
	linux-fbdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-kernel <linux-kernel@vger.kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	linux-ide@vger.kernel.org, dm-devel@redhat.com, keyrings@vger.kernel.org, 
	linux-mtd@lists.infradead.org, GR-everest-linux-l2@marvell.com, 
	wcn36xx@lists.infradead.org, samba-technical@lists.samba.org, 
	linux-i3c@lists.infradead.org, linux1394-devel@lists.sourceforge.net, 
	linux-afs@lists.infradead.org, usb-storage@lists.one-eyed-alien.net, 
	drbd-dev@lists.linbit.com, devel@driverdev.osuosl.org, 
	linux-cifs@vger.kernel.org, rds-devel@oss.oracle.com, 
	Nick Desaulniers <ndesaulniers@google.com>, linux-scsi@vger.kernel.org, 
	linux-rdma@vger.kernel.org, oss-drivers@netronome.com, 
	bridge@lists.linux-foundation.org, linux-security-module@vger.kernel.org, 
	amd-gfx@lists.freedesktop.org, linux-stm32@st-md-mailman.stormreply.com, 
	cluster-devel@redhat.com, linux-acpi@vger.kernel.org, coreteam@netfilter.org, 
	intel-wired-lan@lists.osuosl.org, linux-input <linux-input@vger.kernel.org>, 
	Miguel Ojeda <ojeda@kernel.org>, tipc-discussion@lists.sourceforge.net, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, linux-watchdog@vger.kernel.org, 
	selinux@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	intel-gfx@lists.freedesktop.org, linux-geode@lists.infradead.org, 
	linux-can@vger.kernel.org, linux-block@vger.kernel.org, 
	linux-gpio@vger.kernel.org, op-tee@lists.trustedfirmware.org, 
	linux-mediatek@lists.infradead.org, xen-devel@lists.xenproject.org, 
	nouveau@lists.freedesktop.org, linux-hams@vger.kernel.org, 
	ceph-devel@vger.kernel.org, virtualization@lists.linux-foundation.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-hwmon@vger.kernel.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, linux-nfs@vger.kernel.org, GR-Linux-NIC-Dev@marvell.com, 
	Linux-MM <linux-mm@kvack.org>, Network Development <netdev@vger.kernel.org>, 
	linux-decnet-user@lists.sourceforge.net, linux-mmc@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-sctp@vger.kernel.org, 
	linux-usb@vger.kernel.org, netfilter-devel@vger.kernel.org, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, patches@opensource.cirrus.com, 
	linux-integrity@vger.kernel.org, target-devel@vger.kernel.org, 
	linux-hardening@vger.kernel.org, 
	Jonathan Cameron <Jonathan.Cameron@huawei.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=PLHqMkuV;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Nov 25, 2020 at 12:53 AM Finn Thain <fthain@telegraphics.com.au> wrote:
>
> I'm saying that supporting the official language spec makes more sense
> than attempting to support a multitude of divergent interpretations of the
> spec (i.e. gcc, clang, coverity etc.)

Making the kernel strictly conforming is a ship that sailed long ago,
for several reasons. Anyway, supporting several compilers and other
tools, regardless of extensions, is valuable.

> I'm also saying that the reason why we use -std=gnu89 is that existing
> code was written in that language, not in ad hoc languages comprised of
> collections of extensions that change with every release.

No, we aren't particularly tied to `gnu89` or anything like that. We
could actually go for `gnu11` already, since the minimum GCC and Clang
support it. Even if a bit of code needs fixing, that shouldn't be a
problem if someone puts the work.

In other words, the kernel code is not frozen, nor are the features it
uses from compilers. They do, in fact, change from time to time.

> Thank you for checking. I found a free version that's only 6 weeks old:

You're welcome! There are quite a few new attributes coming, mostly
following C++ ones.

> It will be interesting to see whether 6.7.11.5 changes once the various
> implementations reach agreement.

Not sure what you mean. The standard does not evolve through
implementations' agreement (although standardizing existing practice
is one of the best arguments to back a change).

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CANiq72m2kGxSy2E9jgYE4_xRV6h9rFqiJP25KXs_5ObYnH_nmA%40mail.gmail.com.
