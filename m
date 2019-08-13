Return-Path: <usb-storage+bncBCUJ7YGL3QFBBXG7ZLVAKGQENR2HYRA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id BC1728B8BD
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 14:41:03 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id a21sf59500205pgv.0
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 05:41:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565700062; cv=pass;
        d=google.com; s=arc-20160816;
        b=rsktEYjsB7ED+UwN12NBr8t3moJtt4lgLLUreOCsSwp8l29mGZiVP/vTPp/4qPbGK9
         yuDfKeDNNa4S6Hc67ImBKeIYmZs82nBLUG4Fc+nrK8rNVPRKxjTcx90MzRQSvCr4Y5Bf
         ztOlv6NtDTIkjMrbnEGW9aQk0VTIEfWlqKtK53cvyEKobfXKDR0gFBCpRxa7uUNE6tyn
         eYZFAb8LYLgwpcHllNi1IH+ieDV1LWFbuSCpYlKl4QpnKoFhHDQbnjdmbat8JuBPDCiO
         RNkwuX5m8nkVHlCWsBI1nFt9EoNVNogCfKjO0nBQMO6Ek4LOyvHuS03WT7Yd+fWowuvO
         cSRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8WsE1ujNhA3DhLWO3terRnfNxVOmMbjorasb6Bp1f9w=;
        b=tZF8u6oGCvWjbLPJEkOgRE7ytPfV0IoMl2lmRoA8P42ns4k/ZX6heSU4Sjj5dWlnUu
         18u7YfIBjlMSLFi8m6CmcuB14MiINZnilBVeWHh1K7yuMK9MPGeVIvMKu/tVa0hnRl15
         uZyqJX4OcTyId1/QQhKD6UP9e5iFxbyxohclptXNiFJp3fdr3/Kk3M+xRxOHkK7VtviB
         REzZWbQ0ng8ef46ikPFRHDgCOTKXYDXugJmT1YIqfE+dB5ASfa75yM/QlCA/AFAuwf7z
         ZpYcpCgjZe3/skCCgcwkl7iR4Q7hn4mcx2V5H7lpjDc07PNKWm4gViveDAcQJi+0Tr1k
         O4Bg==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=o8LZIj8A;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8WsE1ujNhA3DhLWO3terRnfNxVOmMbjorasb6Bp1f9w=;
        b=Z+laSCQ8FDIUbirDrgaZ/wa5Ym4l39H/V8DKFcVgqYpuoatFguwZ0XBfxe+2Lltdac
         dTHHJzycPhar8NUjtCNpYY8o903bRNJ48IrM0/tRhzGRw1TwvtuPGf9eH/K78Dn3iBLb
         CBn7lh/+Mo3vfV9xzinqD+VDiY7OUbdOCsvao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8WsE1ujNhA3DhLWO3terRnfNxVOmMbjorasb6Bp1f9w=;
        b=bSq3S42Lnf0FXyHqBvNIFxKHH/NZACh6rywElQBR9UhGCR5od/HszDL9subV2PLKPx
         yKEGKi/NFkTYNPEAv8ED31aZwLM0HBkc0Shq4S2fHSEDxybktp7aR5QRNK9HD3qvEWUg
         KBtSIq2j0XgFgE3LE3OI0kqgqziMr2evy2cfhzxXSfcMuP9wcMb/JJrX/clKIzBnCMl2
         ozPkfYKWRoG0IsvNbGExeo9jwpnQnR5Rw6egcauPoGxvhV3qaH6LGLA4SCaTSdL1m5ax
         +3dZvrOqDBM2GLRK0XjOg+bTPQQxlZryxDwbq5jsJutp6z8N/6M+k/fY4AEPGT1wSq4q
         BetA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXXj8QTYxue0cUL1f+1j+AvTp5PR6uGblUkQKN/1iF3DqBDyBch
	JOaOttC7YGTXZSbm8dCu3S35sA==
X-Google-Smtp-Source: APXvYqzOGjTfKzlUJrGTfHoqTWZEdn00EZ/7aVVvL2Ian054J4sW3A9aogkV+QCOPuKBpoQaLfr68A==
X-Received: by 2002:a17:90a:ad86:: with SMTP id s6mr775576pjq.42.1565700060825;
        Tue, 13 Aug 2019 05:41:00 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a62:ce4e:: with SMTP id y75ls25128242pfg.11.gmail; Tue, 13
 Aug 2019 05:41:00 -0700 (PDT)
X-Received: by 2002:a62:8281:: with SMTP id w123mr10443002pfd.36.1565700060282;
        Tue, 13 Aug 2019 05:41:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565700060; cv=none;
        d=google.com; s=arc-20160816;
        b=Tn+/+8H1ZCgXoW/IfOEzCHNhA6fZTEL1AsfzfQUFskg2FHOHdj69m/KV1zL0GQ5PTD
         oSvd24i9E4zNPO9K4v+XpmhBErw13oRJRhTVHZp66nw57RA9vOIkiiVWEQjX1pbjrKed
         9MFvNdzZguY87jJwmxWXfHeN3xLLVNbrpl2phaxhoN/ky9eH5TEasyA0JMKvksoS4k8f
         fr3YtU+0NXm9o/UNIotet2zUvlsXH8VopFKBC8MUnOhQBTYonyCASVnFo+IHUmLYCGKA
         eNQZcF52gsAWlgISW7m69viYZX9Uzy8XJqrDTErRH3lWU4BCohPaiTvab2Y9G4pzm1+Y
         /MLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MyQtT1qc0Vjjk9YyoKhiWtHddLjcM8NZCAUepe8E5L4=;
        b=XDDOUqOUrBBABj8gRuS0Jhc6/FdAZHc6WgitxreGvk9TLpXZAGOfwLuNJMWpwh54dN
         71Ods6RdI5n1m+jCkligBcvQwagVGaxeetDysgOKEGDEwkRtsRx2TkaUnEnYgajovX12
         Gm0fjmwOXVQFR7UwBhNS5Rhp0uace8Vw+HkO2tiu1FClxHEwLWkv5ZBgCw0sdUSVn733
         4qRUuYpp7EK9xArwxHvy7rB3YLQzFJSdGy4q3YoTFoy7d+8fJoc/wjihyIlMkvt4vw63
         vJM8xmNauE1zriCMTFemx2T8RJW9DpCrohx2n02RaEkUqn1ln76EtI7BVilABI8iPWls
         LMeQ==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=o8LZIj8A;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id c27si5628813pfp.269.2019.08.13.05.41.00
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 05:41:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7C82A20578;
	Tue, 13 Aug 2019 12:40:59 +0000 (UTC)
Date: Tue, 13 Aug 2019 14:40:57 +0200
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
	yamada.masahiro@socionext.com
Subject: [usb-storage] Re: [PATCH v2 01/10] module: support reading multiple
 values per modinfo tag
Message-ID: <20190813124057.GA14284@kroah.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-2-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190813121733.52480-2-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=o8LZIj8A;       spf=pass
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

On Tue, Aug 13, 2019 at 01:16:58PM +0100, Matthias Maennich wrote:
> Similar to modpost's get_next_modinfo(), introduce get_next_modinfo() in
> kernel/module.c to acquire any further values associated with the same
> modinfo tag name. That is useful for any tags that have multiple
> occurrences (such as 'alias'), but is in particular introduced here as
> part of the symbol namespaces patch series to read the (potentially)
> multiple namespaces a module is importing.
> 
> Reviewed-by: Joel Fernandes (Google) <joel@joelfernandes.org>
> Reviewed-by: Martijn Coenen <maco@android.com>
> Signed-off-by: Matthias Maennich <maennich@google.com>

Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813124057.GA14284%40kroah.com.
