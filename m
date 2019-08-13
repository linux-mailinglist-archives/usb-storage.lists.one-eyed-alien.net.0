Return-Path: <usb-storage+bncBCUJ7YGL3QFBBAHAZLVAKGQETR7RYJI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pf1-x448.google.com (mail-pf1-x448.google.com [IPv6:2607:f8b0:4864:20::448])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7348B8C6
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 14:41:38 +0200 (CEST)
Received: by mail-pf1-x448.google.com with SMTP id e25sf68361775pfn.5
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 05:41:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565700097; cv=pass;
        d=google.com; s=arc-20160816;
        b=RxN6UvpusdADLQ2rqtUfvgldhqdKWPOhUOhLH9KKud00C0BHRGxArALJ2AoSN55R2X
         ZloJLH4l08eetuAqohLJd1WzWj8dSziH3mK2cfHvGs2AjbtulqugVAhXUM48i2PDaedj
         1TgPBmuNDJ5Wc8G9Lp00VWkPkl6Pyx11BVzDizLuckgQJuBcxc/lTKE8KIJdx/Ne6uZ1
         JptRNXYXoJm4JgOlEjGIuPOqqcIt03YlRnu3IefCbBdc0OL/zzfGeHYktIRVpWWfjX+Y
         wD4lIBtpFr0LODhuzbn7yI8Z6Etjtjo2jnyaALZZ5a2WY0US6xm56qOHwV4UybEGBMpv
         JgSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=b/93u/AmM3nsRhvSpSHWrieencLooBVFotsjVOoOLgI=;
        b=sNh6T8Znx+a/aXu6jdGYtGznRYk+dc3MwfKVCj5n0fJri4LXSSvGXkbSnfSqxycnMs
         k3INpDwIZmwg9UfFqMsZdCXIvlHYQNRQ0xbIKsJfzBfMtRXGzq1Qf0FdxyN5/rDCaqJW
         MqQ89LgSPdLUi8NvX0X7wV6oESN11cTKuZAQPezEQJIkZ5DsFAmEEz6ybnKD9jcJ3KXL
         im3a6+QLP+dh3qaw4Sv6o0Zwsvd8sEJ0orHgr2MU9iOJV+4scnVdbYAtV2bkW+T7dhdH
         DgnR1oxMNn1U8fJkQTn+khl7KraSgCgbDuoiT9modxviOopZ7oWLE04fql6OdXIGzY4J
         xDHQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KXhgZMi0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b/93u/AmM3nsRhvSpSHWrieencLooBVFotsjVOoOLgI=;
        b=WDnW1ILOTej1fGG+0JMBgvO0AiGjXhcePSCf/+mCGZyQoqRrXEcvQc2Q4FFtAJgU6n
         QEU0sOzBE1vqBi6d/v02KLn5DDUR4jLCkcHg8X9YKDYwxBBKuNoqzJ6qRFO7sFa27G9e
         S/9dRhnYawUfs4hB3cgYN2TOWc6dCjdyF/Ubc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b/93u/AmM3nsRhvSpSHWrieencLooBVFotsjVOoOLgI=;
        b=rdmoJB2xsxnpeZUlj7/Ktd07bDX5LWMhG6yusO+dyK5gglgWyQr3/SJAvppA3JtKC5
         8a2jM6IAUUGxuAjID7AZhPg+DMt/bWUVNpZD45sLcV2b3gbvzOlQdj5mf/YKXPWwGFXf
         XiZ8RWPojB9ZTIuCFffnSnoRaVGA8f1iG/CCdXmVZiYHTT63bLEmHHjfKJ6p0BVMKIwC
         5xef4oQAB6RZ5iZPpih30CrixyuQxvWS4nRzLhWxq8GKJwOT887jHGHQG1uLPm7OOMvO
         WGZREFaxq1/Bzls4MMhFp1Gz2973le+PVxLgp0unJm8xTGwnuX9XsbxZz1XF54VKGiEz
         kKWQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVd0Pci/5hWGenTONUo3QAWsm4kdRTRoTTvdfDoqg0KspKwq+YJ
	tThx4vk0bh2y3z7eUXVVPWejLw==
X-Google-Smtp-Source: APXvYqwGkbSWmTSFAa7DO7bQRndbTosDPPuPz5cUht+Ac2dSolCw/qpKVhcQbamRvTgTb/a2NYaTEg==
X-Received: by 2002:a17:90a:2047:: with SMTP id n65mr2107248pjc.5.1565700097075;
        Tue, 13 Aug 2019 05:41:37 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:90b:354:: with SMTP id fh20ls399118pjb.2.gmail; Tue, 13
 Aug 2019 05:41:36 -0700 (PDT)
X-Received: by 2002:a17:90a:db0d:: with SMTP id g13mr2076859pjv.51.1565700096650;
        Tue, 13 Aug 2019 05:41:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565700096; cv=none;
        d=google.com; s=arc-20160816;
        b=lxMdaE7etuzXJIMaiJfiN+e3S6QdMG7M7QaASBA8Hi56bbwfxTsjfGj38LHbR0e5tY
         C4Ua+DCbBQH0py5XYl8opHNBLmFLDpa2mYFLDkN5Yvag/S2ENlid45VFbvJziBvbp7LT
         WoynbCvDFA5FlrKuztCuMbTQvP2GhHMOfj2ipzVTH55DSriaJrILdcKt5YqkKIAsHQ04
         8a947+umSD18y6dg85nVPBSN0eV+cCyMVZEb3HZE0oPiinWOo994LGbzbkEWEnYOBSl1
         84NuEUsbgnt0uMhecH2XhvTDw5ifqdmgS38l/eFaZ3CQBparjtzLyt0kbKi6GdHpQ8WZ
         KMfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=KV0tH5009/7EjtPeaaDSoZj3FDzXpieAGaKvp32+I2c=;
        b=S7ZOQRcj+zaM0GQ0RZjT6cjqv6ssJKF5r/Y2mYY8CBzzHIqjmadD+WsNGQ5DH4wQyE
         lVC6JlrcqhQ6YbHCDOxvVXz3b0lWOOxFvv+ampzGa86NjxXFrtJLpXAhFuwOZAnxLxLT
         4mXyZ/XnqcgfwbvA1mxeHr94l7bW6rDZ9UB6c4ZR6RiNSnuCc2hIDGIkc8GVSKXagRdw
         SKgrAv4p2u7bieYZml9mI7sG9OJ5UhiaYJh8L3sIBBM11gS/RH280DY8lW0PiCymRwuw
         tXkXQTIS+LGP2XNNgS4bletR7VMWVoyC3920zahPtM0iZBfImzGbCu43KNtWs7WxLsdK
         yYbQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=KXhgZMi0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id t23si59382301plr.108.2019.08.13.05.41.36
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 05:41:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E676720578;
	Tue, 13 Aug 2019 12:41:35 +0000 (UTC)
Date: Tue, 13 Aug 2019 14:41:34 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Matthias Maennich <maennich@google.com>
Cc: linux-kernel@vger.kernel.org, maco@android.com, kernel-team@android.com,
	arnd@arndb.de, geert@linux-m68k.org, hpa@zytor.com, jeyu@kernel.org,
	joel@joelfernandes.org, kstewart@linuxfoundation.org,
	linux-arch@vger.kernel.org, linux-kbuild@vger.kernel.org,
	linux-m68k@lists.linux-m68k.org, linux-modules@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-usb@vger.kernel.org,
	lucas.de.marchi@gmail.com, maco@google.com, michal.lkml@markovi.net,
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com,
	sam@ravnborg.org, sboyd@codeaurora.org, sspatil@google.com,
	stern@rowland.harvard.edu, tglx@linutronix.de,
	usb-storage@lists.one-eyed-alien.net, x86@kernel.org,
	yamada.masahiro@socionext.com,
	Andrew Morton <akpm@linux-foundation.org>,
	Nicolas Pitre <nico@fluxnic.net>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: [usb-storage] Re: [PATCH v2 02/10] export: explicitly align struct kernel_symbol
Message-ID: <20190813124134.GB14284@kroah.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-3-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190813121733.52480-3-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=KXhgZMi0;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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

On Tue, Aug 13, 2019 at 01:16:59PM +0100, Matthias Maennich wrote:
> This change allows growing struct kernel_symbol without wasting bytes to
> alignment. It also concretized the alignment of ksymtab entries if
> relative references are used for ksymtab entries.
> 
> struct kernel_symbol was already implicitly being aligned to the word
> size, except on x86_64 and m68k, where it is aligned to 16 and 2 bytes,
> respectively.
> 
> As far as I can tell there is no requirement for aligning struct
> kernel_symbol to 16 bytes on x86_64, but gcc aligns structs to their
> size, and the linker aligns the custom __ksymtab sections to the largest
> data type contained within, so setting KSYM_ALIGN to 16 was necessary to
> stay consistent with the code generated for non-ASM EXPORT_SYMBOL(). Now
> that non-ASM EXPORT_SYMBOL() explicitly aligns to word size (8),
> KSYM_ALIGN is no longer necessary.
> 
> In case of relative references, the alignment has been changed
> accordingly to not waste space when adding new struct members.
> 
> As for m68k, struct kernel_symbol is aligned to 2 bytes even though the
> structure itself is 8 bytes; using a 4-byte alignment shouldn't hurt.
> 
> I manually verified the output of the __ksymtab sections didn't change
> on x86, x86_64, arm, arm64 and m68k. As expected, the section contents
> didn't change, and the ELF section alignment only changed on x86_64 and
> m68k. Feedback from other archs more than welcome.
> 
> Co-developed-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Matthias Maennich <maennich@google.com>

Ick, messy, nice fix.

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813124134.GB14284%40kroah.com.
