Return-Path: <usb-storage+bncBDRZHGH43YJRBFUK576QKGQEJCT4Z6I@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-yb1-xb46.google.com (mail-yb1-xb46.google.com [IPv6:2607:f8b0:4864:20::b46])
	by mail.lfdr.de (Postfix) with ESMTPS id CC9A52C0D18
	for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 15:20:07 +0100 (CET)
Received: by mail-yb1-xb46.google.com with SMTP id n186sf23227099ybg.17
        for <lists+usb-storage@lfdr.de>; Mon, 23 Nov 2020 06:20:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606141206; cv=pass;
        d=google.com; s=arc-20160816;
        b=WGpBLuYeAu/7v4u5/G0HeyOSStscFwsQor1lMpbGfyRMg9C29JW+NV4fXP3/CKHSw/
         /Szo7JT2xiVDr/FFwGeLbS2vGgaWYbHrl3hAcJDgLNRhyo+pQBlKs29IitWIA7oAL1Sz
         YED8rg37WdzknmanXp2MAG5WWekW6PPxP7ACtxiONzGXe1cUHWelrE2lQqsH4cvuyhvx
         SYnFQQ2i/MfzkOsyaaQgqEgfBMN5ipw/8l3jnCi7rM2Q6fnwnyxOGLP/bvZw+JdG2lAw
         5k6Kz4RgUVewGmC6/PBKsfZ14mIhgW6M0kMx8Bo21jexqwaDfkSRr+5TuDh/Ltz5jzLs
         9BoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=1JXWNZFYGz+2/3XdysjTKgEqcWs7FoX73ND6eBNdz40=;
        b=djt6blJ/TLw6jw0EOjk67G9auwXdGybXE21luKlVUvYn/o1616PYVG6WvgTV444+PZ
         5dQXWNk1L2b9DofHAx70KsvPnMpMYu5h8EuaaYScsqbERF1ue6RVtnVrg6+7S9IKEcD0
         FaD8lFPY4ykUKd/OPGomWHH193yl3ZfFeP2SoqIA5OV1inICAYdxnEkbOy83Y6VdeOJg
         jzSY1D3N+Uj3Rque5Wg4F8Z5uQjkj0OmmdzqJmeTtH9qSkxJSjvWb4mIWe+sFtEaBw8F
         aqBHShty2YXobzCwIfz01vLW+tX0UC83i7X7hNFrxLLFFekdsIlOuriftzgo4fv4YX+Q
         gHtQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b0LkeT2q;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1JXWNZFYGz+2/3XdysjTKgEqcWs7FoX73ND6eBNdz40=;
        b=EDj0XOnhbEG7/tK2io5fpumBo+U4Dr8AN2nD8DBabCWOC+5vN2U2Qyb5OcoO5xD0DH
         YyIWqob/baB0fJwN4vxb7UImyRd6rcDXA4N6aHGgE9f9XGfK0UU2i1sGeSuPb3NM0uRg
         m1eGjCyWUoFE5Pl7tCD+r1bDfjzhjcnWXjtD0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1JXWNZFYGz+2/3XdysjTKgEqcWs7FoX73ND6eBNdz40=;
        b=fsWU0lhJtlN3wLbIiy2vnScjfgdPMYqVCgPOFU0amNJEdbPwWeT8kIxZ0d0rjyuLMv
         9dnpePmBkapMMQQnptskXyPDxwuabFQ7IqB0PFQsyFKk+zUaaMhtaQ7e8X0UkjrSl18v
         PhNCW9rkKCyBl/eK9xJIpXTM3YfP+kRkPFiuq3mp214eNOerTk1k/lU78qGTzDfG7E6s
         3i2cJ/VK6hL5Nqf0bQCsVzV3rgjnPhrLI0VSzEedDKwLOvxR3WObPaBTLlqsqrJK/Yyl
         HBkfXG4Bq04EYkwUjpbmFo3oImBbcQy4MiL1zSKy0u9kE1TNbmod7yw9OlQudAbNxJG4
         E3pA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOAM530jFCkR7PmbITPXRBiqW0BTHjoy8DVS31Dzr5Vh1yEDJQ4mkWcS
	18nFX1cmlytBufWu0yshKA8FDg==
X-Google-Smtp-Source: ABdhPJwuhnV3m5NXu3FkPAfFYEJzhf1u/VCUYXt0SxP9PI3UaTzrdw5GUGy1NZ4XE2ZURZ/ssJD+8g==
X-Received: by 2002:a25:a3a1:: with SMTP id e30mr27706786ybi.264.1606141206626;
        Mon, 23 Nov 2020 06:20:06 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a25:19c3:: with SMTP id 186ls39162ybz.7.gmail; Mon, 23 Nov
 2020 06:20:06 -0800 (PST)
X-Received: by 2002:a25:cf95:: with SMTP id f143mr35691456ybg.216.1606141206032;
        Mon, 23 Nov 2020 06:20:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606141206; cv=none;
        d=google.com; s=arc-20160816;
        b=hpqAQXbDc6YUw++0fn849t1cUe8uEB+EWFHWsDCRoUgVN2jXi+30890bje7gnlwDkG
         Qb9gL3r0VaUL1CHJc00/xtGio/hycIzvaa+1zGrJX3N9x1itpWj3k9zYmZH+FYRfgPcv
         q+RBJXoj4vF7HIgqubKMVvu8hthN5NIaEWzWVEgjoDpP80FbKDFHhC40TkYLSYzAFBI7
         FCIXhseazaJN805xHOG17nEPYDJLeWy7/Tc+VT6heocMBAkFyAU891K0s1y0piunCZIv
         kplu8qx2lcvcEndCJvwyAS1k0S0UmzOknmykwEoJnky1nMoP6nnjtZlnHnMplNAwLZIT
         ZLcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=WUYMqcUnfpAQa1YuH9tQ3ze5bp2bxaoGLXc9Sg/470Y=;
        b=JDIPJB6yyC/EcSptG5lrOVFJqJkVK6hOHGyXvj6xqXEKsIUtdixse1H2jOHRlDa6Hj
         46TAyBt0n5+v0oJMs39wMuiHgMDA1a03o6AGjVwHdiQfMngpS8XoGrZQX73u+e7e/EYp
         b4zLivvcrKYvQh238zUNnQNr2LvwAMkdVNGCrxhUNvYvHHVfie9qOZXs3kkqT2jC/+p2
         /DZffi5vSOF8JBe7b86SrBpUb+OLfgn16i0wzuTavYcbkBz0l1sfI+RHUWNnt7HrmmVP
         KNwiMobLzfN3wBLf+MW6RJASlYr0MG9WeIK/pYxXJ4Qb35KXeqbrFdTj4yx+yEXy0c1u
         /rOA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b0LkeT2q;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id k185sor3413022ybf.81.2020.11.23.06.20.06
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Mon, 23 Nov 2020 06:20:06 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a25:bcc7:: with SMTP id l7mr32380985ybm.115.1606141205830;
 Mon, 23 Nov 2020 06:20:05 -0800 (PST)
MIME-Version: 1.0
References: <cover.1605896059.git.gustavoars@kernel.org> <20201120105344.4345c14e@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011201129.B13FDB3C@keescook> <20201120115142.292999b2@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <202011220816.8B6591A@keescook> <9b57fd4914b46f38d54087d75e072d6e947cb56d.camel@HansenPartnership.com>
 <CANiq72nZrHWTA4_Msg6MP9snTyenC6-eGfD27CyfNSu7QoVZbw@mail.gmail.com> <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
In-Reply-To: <1c7d7fde126bc0acf825766de64bf2f9b888f216.camel@HansenPartnership.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Mon, 23 Nov 2020 15:19:55 +0100
Message-ID: <CANiq72m22Jb5_+62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A@mail.gmail.com>
Subject: [usb-storage] Re: [PATCH 000/141] Fix fall-through warnings for Clang
To: James Bottomley <James.Bottomley@hansenpartnership.com>
Cc: Kees Cook <keescook@chromium.org>, Jakub Kicinski <kuba@kernel.org>, 
	"Gustavo A. R. Silva" <gustavoars@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	alsa-devel@alsa-project.org, amd-gfx@lists.freedesktop.org, 
	bridge@lists.linux-foundation.org, ceph-devel@vger.kernel.org, 
	cluster-devel@redhat.com, coreteam@netfilter.org, devel@driverdev.osuosl.org, 
	dm-devel@redhat.com, drbd-dev@lists.linbit.com, 
	dri-devel@lists.freedesktop.org, GR-everest-linux-l2@marvell.com, 
	GR-Linux-NIC-Dev@marvell.com, intel-gfx@lists.freedesktop.org, 
	intel-wired-lan@lists.osuosl.org, keyrings@vger.kernel.org, 
	linux1394-devel@lists.sourceforge.net, linux-acpi@vger.kernel.org, 
	linux-afs@lists.infradead.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-arm-msm@vger.kernel.org, 
	linux-atm-general@lists.sourceforge.net, linux-block@vger.kernel.org, 
	linux-can@vger.kernel.org, linux-cifs@vger.kernel.org, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, linux-decnet-user@lists.sourceforge.net, 
	Ext4 Developers List <linux-ext4@vger.kernel.org>, linux-fbdev@vger.kernel.org, 
	linux-geode@lists.infradead.org, linux-gpio@vger.kernel.org, 
	linux-hams@vger.kernel.org, linux-hwmon@vger.kernel.org, 
	linux-i3c@lists.infradead.org, linux-ide@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux-input <linux-input@vger.kernel.org>, 
	linux-integrity@vger.kernel.org, linux-mediatek@lists.infradead.org, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, linux-mmc@vger.kernel.org, 
	Linux-MM <linux-mm@kvack.org>, linux-mtd@lists.infradead.org, 
	linux-nfs@vger.kernel.org, linux-rdma@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-scsi@vger.kernel.org, 
	linux-sctp@vger.kernel.org, linux-security-module@vger.kernel.org, 
	linux-stm32@st-md-mailman.stormreply.com, linux-usb@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, 
	linux-wireless <linux-wireless@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, netfilter-devel@vger.kernel.org, 
	nouveau@lists.freedesktop.org, op-tee@lists.trustedfirmware.org, 
	oss-drivers@netronome.com, patches@opensource.cirrus.com, 
	rds-devel@oss.oracle.com, reiserfs-devel@vger.kernel.org, 
	samba-technical@lists.samba.org, selinux@vger.kernel.org, 
	target-devel@vger.kernel.org, tipc-discussion@lists.sourceforge.net, 
	usb-storage@lists.one-eyed-alien.net, 
	virtualization@lists.linux-foundation.org, wcn36xx@lists.infradead.org, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, xen-devel@lists.xenproject.org, 
	linux-hardening@vger.kernel.org, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Joe Perches <joe@perches.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=b0LkeT2q;       spf=pass
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

On Sun, Nov 22, 2020 at 11:36 PM James Bottomley
<James.Bottomley@hansenpartnership.com> wrote:
>
> Well, it seems to be three years of someone's time plus the maintainer
> review time and series disruption of nearly a thousand patches.  Let's
> be conservative and assume the producer worked about 30% on the series
> and it takes about 5-10 minutes per patch to review, merge and for
> others to rework existing series.  So let's say it's cost a person year
> of a relatively junior engineer producing the patches and say 100h of
> review and application time.  The latter is likely the big ticket item
> because it's what we have in least supply in the kernel (even though
> it's 20x vs the producer time).

How are you arriving at such numbers? It is a total of ~200 trivial lines.

> It's not about the risk of the changes it's about the cost of
> implementing them.  Even if you discount the producer time (which
> someone gets to pay for, and if I were the engineering manager, I'd be
> unhappy about), the review/merge/rework time is pretty significant in
> exchange for six minor bug fixes.  Fine, when a new compiler warning
> comes along it's certainly reasonable to see if we can benefit from it
> and the fact that the compiler people think it's worthwhile is enough
> evidence to assume this initially.  But at some point you have to ask
> whether that assumption is supported by the evidence we've accumulated
> over the time we've been using it.  And if the evidence doesn't support
> it perhaps it is time to stop the experiment.

Maintainers routinely review 1-line trivial patches, not to mention
internal API changes, etc.

If some company does not want to pay for that, that's fine, but they
don't get to be maintainers and claim `Supported`.

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/CANiq72m22Jb5_%2B62NnwX8xds2iUdWDMAqD8PZw9cuxdHd95W0A%40mail.gmail.com.
