Return-Path: <usb-storage+bncBCUJ7YGL3QFBBIVNZPVAKGQEY5VFSLY@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x545.google.com (mail-pg1-x545.google.com [IPv6:2607:f8b0:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C2C18BCFD
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 17:26:28 +0200 (CEST)
Received: by mail-pg1-x545.google.com with SMTP id h5sf66667446pgq.23
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 08:26:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565709987; cv=pass;
        d=google.com; s=arc-20160816;
        b=qhV5QgvSfF2UTFRKWYN4Nr/1Xu5NewlTvt7QL9/qzmrnVuPahfVzmNJuEThA0TuW10
         eEyP8T3Ve9yFTFcQOl1O8R9NAvvbanvmR/IUNgPJVArTRyKg8ss6URPkcYV/ggR3C0dt
         NgNQh+V3QtXY0t2sXccE1QvVl0JT1XHmXiLJ5v2MMSKvqE7+BvdJbqKK8AnnqOzZ6KlP
         Lpa4shMHS8+uXy0QqGbHaY57ush2/0qLby0YWhXaxEhFWTcVMxt6lKqQinJ5kIVefl2B
         6m7127iiwNXi5U2fDel2iT9czKVs+10oPdRb6U6wKqQu1kpC3t4rmsBZKF2hZFrv5p0g
         kw+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=dkxBYYjtpB86lhwtFJ4+giSjhwy/5PoRyFJwTfYKRGc=;
        b=vn6nkoIPRq/U0A4agkmGefGpFRpT5bTf6K78PS6j/j+U9+7dbmdHoVUE4Vkp4g7ZMI
         XWqcxViyEKtf3U+9E2DGkjYgHByTvBknxQY3P1GJ05/3Ggu8tjHIcxDLJ/mFy7if/pm+
         xH2fe8Np+vGQDY8ODQNVhz/aqL9q3JXAcoRoFoaNhXMMeY09h6X+qwO+kzTMf94rv+HM
         HLIDRSQQxtn0tLkCpYxeYFyDtksBx+/oZ4nknSj17X3nBlQ5AtEBK+6qkrnUkB13POfK
         uOWPmeh9fYcv/CP4xxMdkDqFVhRvhQS1euzle8CJR4+J3s5Kh4kIw+dL2OtHS+CfyStf
         HExQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="gi/sr8eK";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=dkxBYYjtpB86lhwtFJ4+giSjhwy/5PoRyFJwTfYKRGc=;
        b=UKUA4Nsfb77GrQTD2Uax73QnCOT/0jFg+qHW2t2ijmlmAOFE3ToUw2inFGGTEo2kCf
         37/HA0bA9PVEUVDBE3sL6wB/FmnT+jyENR9I2tCUc7atrg1vPhe6EZObjEynuMfMqWx/
         EvwJxQgFikONEo+R+853jtv/xbVelVznSpGSA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=dkxBYYjtpB86lhwtFJ4+giSjhwy/5PoRyFJwTfYKRGc=;
        b=BIPa1bCkb7pTqkL4mKSwufkQu4u+tLZ3YhZlRnXZ1JRGMetP+MubxLfX3vzg1B9n8E
         nAwT0iJ6lGbUFKYVb9APXlq4rhROLf7caekGlub0e3ULh6yE0CkJO7GuawMQSGlmdvXQ
         ly4MEX8UcKuuREkmflfHZtLEXAyhBdIYuACAVprP3wWzvTNLUMTs4grrZPZ3u24uwwfv
         oeQCYwtRmIC/HhZcTqXfMTKFnGHyr/7aSz6/fNTDe6DaXWPWl/IU69W8tX9vnAuZMRNd
         WNFLgu4Oq0f53phpNUKD86ddtJTpfLAKR9EcmisyCr4aYF7D40r0hf5SJFJ/UDOWBa7o
         uM3g==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVJLSOvzxyv31YFsgjExEQigqDM/HJxF91OEgMEX6x6fpym4j7H
	GVN+pdqHWhosQabzinGcv279xA==
X-Google-Smtp-Source: APXvYqw7fe4i5TYKMHO6scB9iqCE98Srg62VNtO3kWGddDLC9dCZYqmTt5CzzfMagWmbD03EhT638A==
X-Received: by 2002:aa7:8647:: with SMTP id a7mr8191321pfo.119.1565709987017;
        Tue, 13 Aug 2019 08:26:27 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a17:902:20c8:: with SMTP id v8ls4035947plg.11.gmail; Tue, 13
 Aug 2019 08:26:26 -0700 (PDT)
X-Received: by 2002:a17:90a:be15:: with SMTP id a21mr2813200pjs.74.1565709986612;
        Tue, 13 Aug 2019 08:26:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565709986; cv=none;
        d=google.com; s=arc-20160816;
        b=kAd5bZeyK3JPrExmMLjgNxqu6iYbIRa/afKWhyPls0CqdWTSrJB9qVdLmp2h4YWHjg
         CExJhv5Fs5yov1BLphRhUmrlZM2OxdQAozXTef2yEiK5ODyLRoPdCRGPu4MvgsS4RdfL
         QCkRGLDE48EcCdN+YiaV1abNvxJQhkHzhWxbxnHN6LIknKCho95cT2+mDV4eqJGdI6Zu
         wHaxPS1flp9P4hJH1vyr4ARlz5p9EOhw+qn+NXT8aiShsCi6afW0HsOTSzDR19QCs7mn
         kWwry+hMwJgn+ntC4AAG6MBvDWQp/CwKJ6GIgR9Y5eGDSWNH0s1jk8thcuEkWPJFyFf4
         v7Qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jqTM9olYFBH1M/w/rPg9kZ1cIH1tEmA6wb3EF5Kz0IU=;
        b=Fi5xA/UC162FkfigA0MqVdGm3uRnQkQzvNVO5iql7NRclcYtFx51KUQOobxvaArPkd
         +XES3/U5JSbSSIACDZy27fLXTd13pVJO4X2jZWPvx8DSc0jT/sQHHJJLkKa4a2MeYiOU
         iWzyYYEssa6O/yYZW9a9XS4dNTu28AFgmL0rbAgTziNcdaxKqVWTGcWrxNqc8hj6Ls1E
         IRcRoHyez2WWh7bSwnF0/GOPnMcOiUVL+QBM2u1qu8uvVdmB3j6zzF1rBvq5HwGJjMZ5
         y5dWZrS0QAdTaIg3KCspfEcooWULPxbX5fgdFA0Ezo3MimIxZTRWrJ78wDfVhf9Z9N8d
         cPqg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="gi/sr8eK";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id k192si66250431pge.222.2019.08.13.08.26.26
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 08:26:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D402420663;
	Tue, 13 Aug 2019 15:26:25 +0000 (UTC)
Date: Tue, 13 Aug 2019 17:26:24 +0200
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
	Michael Ellerman <mpe@ellerman.id.au>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: [usb-storage] Re: [PATCH v2 03/10] module: add support for symbol namespaces.
Message-ID: <20190813152624.GB26138@kroah.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-4-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190813121733.52480-4-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="gi/sr8eK";       spf=pass
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

On Tue, Aug 13, 2019 at 01:17:00PM +0100, Matthias Maennich wrote:
> The EXPORT_SYMBOL_NS() and EXPORT_SYMBOL_NS_GPL() macros can be used to
> export a symbol to a specific namespace.  There are no _GPL_FUTURE and
> _UNUSED variants because these are currently unused, and I'm not sure
> they are necessary.
> 
> I didn't add EXPORT_SYMBOL_NS() for ASM exports; this patch sets the
> namespace of ASM exports to NULL by default. In case of relative
> references, it will be relocatable to NULL. If there's a need, this
> should be pretty easy to add.
> 
> A module that wants to use a symbol exported to a namespace must add a
> MODULE_IMPORT_NS() statement to their module code; otherwise, modpost
> will complain when building the module, and the kernel module loader
> will emit an error and fail when loading the module.
> 
> MODULE_IMPORT_NS() adds a modinfo tag 'import_ns' to the module. That
> tag can be observed by the modinfo command, modpost and kernel/module.c
> at the time of loading the module.
> 
> The ELF symbols are renamed to include the namespace with an asm label;
> for example, symbol 'usb_stor_suspend' in namespace USB_STORAGE becomes
> 'usb_stor_suspend.USB_STORAGE'.  This allows modpost to do namespace
> checking, without having to go through all the effort of parsing ELF and
> relocation records just to get to the struct kernel_symbols.
> 
> On x86_64 I saw no difference in binary size (compression), but at
> runtime this will require a word of memory per export to hold the
> namespace. An alternative could be to store namespaced symbols in their
> own section and use a separate 'struct namespaced_kernel_symbol' for
> that section, at the cost of making the module loader more complex.
> 
> Co-developed-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Matthias Maennich <maennich@google.com>

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813152624.GB26138%40kroah.com.
