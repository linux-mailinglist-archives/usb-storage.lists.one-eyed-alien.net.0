Return-Path: <usb-storage+bncBCUJ7YGL3QFBB5HBZLVAKGQEQ7KVUSI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pg1-x548.google.com (mail-pg1-x548.google.com [IPv6:2607:f8b0:4864:20::548])
	by mail.lfdr.de (Postfix) with ESMTPS id B90348B8F8
	for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 14:45:41 +0200 (CEST)
Received: by mail-pg1-x548.google.com with SMTP id b18sf66415833pgg.8
        for <lists+usb-storage@lfdr.de>; Tue, 13 Aug 2019 05:45:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565700340; cv=pass;
        d=google.com; s=arc-20160816;
        b=dOY00jSRN783RQffB2XMB5oyQh+dd/4Ai9AXUmeDUT5xaMin4a26E9Mu+doVjm+U04
         JDIJ82K9ChC+eqrRnwQFSlQTsoDmQvzQwS0b37Qj7PDwRqcY/sp7bCSEK1zQV0B2Fdlo
         Xem/cuWW4Xynyt98E8dUbjxiqhCI6WoTo7EPSMgPxyIYmrcH04F5NYF5zwkeEPkHDKt1
         TF0hDJPgMymUa9lUO16nxwT/TGWAuUAmO4X6+5P13oY7sEhuz8T+a88/zJ7KmX3wUP5o
         wh8DolhO3vxOeqNUi6suyhf2oU2K/rYiM504kKJhlRiJAepQiJmaykHN5YcQduGEBLWw
         xb9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=8PountjIdEGp3HK2rnbHnZty0cxCChLFzgmZk0Zgh6I=;
        b=DYyPeAQE/vofzeVRjg2cmrLxB8WKEJo2uahC4UhKkCRzGj/+OortNMJctJJLzbDGYu
         isen9KBiGXrnf+AC/8kvtO8Tj4UPJRipcz9bBEsj5lejdhfjenSwTuX554BR8grYfs50
         ENyiJZ1j9I3hlZuMzzB+/0kZhMhQI7LFjVRt6rHSBvMQbddj5lvgQMLxU5dsQi/8038H
         uNZ9zeR05Egi2u73Q7EIUi++5TLorxAUr48Uqlw6gqmBq/VRN5/S1UYkZUTQY5Imq9Gp
         f/XJcCppai57deLxq8oteI5QDLQRkb/+j38cLsWXRKXCUvGOXKLJilhE/mbbHeskQctv
         hUjw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NH+JQhYu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8PountjIdEGp3HK2rnbHnZty0cxCChLFzgmZk0Zgh6I=;
        b=DBAoW8fRO/GSSZojr+5DNGArt55sRjjszNRZ/davuVqfg40HSKAVRqeZXeTWJ/cjBY
         pom9bVPzHriWu02cyFuTn1RPyEN8vF21AXLpPquAac4eyVUmPprd/hLslSNFryfRRnBm
         hMTJUmMwJgezqmUAkBwGQG65GIIRP2C/SAX+0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8PountjIdEGp3HK2rnbHnZty0cxCChLFzgmZk0Zgh6I=;
        b=NJCTjoPfcRjTbsvujKOEsVKLsdVOy+vzgGT86yJnUYwzGyoiu1zC4XbjpI6ikahLl7
         3jTloHqayGx4okebtQmDZMEk7Por4EiVRPJ7mieZpnw5gz2hzVdYng/QsUtRkrowMdqL
         HXfQGGPXSsiNppCayB96Mqci1lCNEFcAwPgWkH3srXO+KfEX1vR/HCCgxMb5s3ZTDEdj
         B7yFjJzZbV+HgGT4r49G8ZFbzhi8Ihq0aLKqdDEFCMpbo+F6W/9LVjgWpkbTx9arJSQ7
         H8F6cu+FxQSzSecsupncZQpMcHtRnWkVM1uwCQEmrwqunHIz8EpnXom5GXZy3sNGjbrN
         0K+Q==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAVXYVYul2kff2CjpqSRF/dhAtcnkz9vIgOVucrP2MXbbm9pXgU7
	/BnDBExBo3jcqQnBd+1IRslgIA==
X-Google-Smtp-Source: APXvYqzF/heMTB8ldOdPn0PkKyqtehFXEDnwsDVs74mojavXV1+4hGlmluo0O9rXV9FDtAQLeP2ZQg==
X-Received: by 2002:a63:c006:: with SMTP id h6mr33960102pgg.290.1565700340253;
        Tue, 13 Aug 2019 05:45:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:2b4e:: with SMTP id r75ls141988pgr.0.gmail; Tue, 13 Aug
 2019 05:45:39 -0700 (PDT)
X-Received: by 2002:aa7:9516:: with SMTP id b22mr40579199pfp.106.1565700339931;
        Tue, 13 Aug 2019 05:45:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565700339; cv=none;
        d=google.com; s=arc-20160816;
        b=IXxWAYiTdErdF9aBwoM7UYcwpXGM0DecnXGDqkllvG0h3/h94lNbvLA86BRDFkJwOu
         nea2tEz9x7d/Y4xTPZO3wIqhHDmZGh262AhJDGC8GmYzwS0Bk164Yg/HKvCjoMqyHhFb
         ModJBe/lmCH3YyTikY415GwQI1C4D3utIwdOMidrVwX/D4y7pDAD/CpfqVBUYHe9HaoX
         lPIgQNcTQaN7wqq57OWkP042RwavrfzOrEB4S9DUv0ZyKvKQZb4wCVbZUih/JbwrDtmJ
         IL0YVu2qAId4Ly8D59tir/LN26uCcOb/ZA9y526t+92XinXC2kljkvW/H8HXmOxfo0ed
         qRlg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=nHBDmI2Lhwxq6Y55N7u9GA9tN9XZxExhBC1vfqxrOW8=;
        b=ZFkMQSrsrQpZgP5dVSlxeis8ovSkVsyCN4fzmoHMbV2IKc3RHpGBlKPef159fS7LHS
         3BcrSgHEvb18H6RRlirQ4GcW589eZ9vjwKtRWorvy8D73OWUfJvw0hPIt7eOtPFukbZN
         XnctFhtvmp8Rj01AnKpDIjwiudpkDTCkAf7gyxSbzlsxjh/cNd81M1DqNWA4yMx21UGU
         j7LZ9zDD3n1Y56d6wmt1WLESZjauVLWDF8ut9tXucraCUIXYS8XR2cid2G5/gg0rmjMh
         qkAmRwg2veZbG/lueXEZ7pi/hd9e3u9QVhlQDIbNH0sE0OoTWgqV/hXRRlE6dbBdklmj
         4ahA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NH+JQhYu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by mx.google.com with ESMTPS id v14si65199280pgl.386.2019.08.13.05.45.39
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 05:45:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2E2F520578;
	Tue, 13 Aug 2019 12:45:39 +0000 (UTC)
Date: Tue, 13 Aug 2019 14:45:37 +0200
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
Subject: [usb-storage] Re: [PATCH v2 10/10] RFC: usb-storage: export symbols
 in USB_STORAGE namespace
Message-ID: <20190813124537.GB12475@kroah.com>
References: <20180716122125.175792-1-maco@android.com>
 <20190813121733.52480-1-maennich@google.com>
 <20190813121733.52480-11-maennich@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190813121733.52480-11-maennich@google.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=NH+JQhYu;       spf=pass
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

On Tue, Aug 13, 2019 at 01:17:07PM +0100, Matthias Maennich wrote:
> Modules using these symbols are required to explicitly import the
> namespace. This patch was generated with the following steps and serves
> as a reference to use the symbol namespace feature:
> 
>  1) Define DDEFAULT_SYMBOL_NAMESPACE in the corresponding Makefile
>  2) make  (see warnings during modpost about missing imports)
>  3) make nsdeps
> 
> Instead of a DEFAULT_SYMBOL_NAMESPACE definition, the EXPORT_SYMBOL_NS
> variants can be used to explicitly specify the namespace. The advantage
> of the method used here is that newly added symbols are automatically
> exported and existing ones are exported without touching their
> respective EXPORT_SYMBOL macro expansion.
> 
> Signed-off-by: Matthias Maennich <maennich@google.com>
> ---
>  drivers/usb/storage/Makefile        | 2 ++
>  drivers/usb/storage/alauda.c        | 1 +
>  drivers/usb/storage/cypress_atacb.c | 1 +
>  drivers/usb/storage/datafab.c       | 1 +
>  drivers/usb/storage/ene_ub6250.c    | 1 +
>  drivers/usb/storage/freecom.c       | 1 +
>  drivers/usb/storage/isd200.c        | 1 +
>  drivers/usb/storage/jumpshot.c      | 1 +
>  drivers/usb/storage/karma.c         | 1 +
>  drivers/usb/storage/onetouch.c      | 1 +
>  drivers/usb/storage/realtek_cr.c    | 1 +
>  drivers/usb/storage/sddr09.c        | 1 +
>  drivers/usb/storage/sddr55.c        | 1 +
>  drivers/usb/storage/shuttle_usbat.c | 1 +
>  drivers/usb/storage/uas.c           | 1 +
>  15 files changed, 16 insertions(+)
> 
> diff --git a/drivers/usb/storage/Makefile b/drivers/usb/storage/Makefile
> index a67ddcbb4e24..46635fa4a340 100644
> --- a/drivers/usb/storage/Makefile
> +++ b/drivers/usb/storage/Makefile
> @@ -8,6 +8,8 @@
>  
>  ccflags-y := -I $(srctree)/drivers/scsi
>  
> +ccflags-y += -DDEFAULT_SYMBOL_NAMESPACE=USB_STORAGE

Wait, we have to do this for every subsystem?  I thought there was a
macro we could use in the code itself for this.  What changed from
earlier versions, or was this always here?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190813124537.GB12475%40kroah.com.
