Return-Path: <usb-storage+bncBDMYPB44VAFRBHNG7HVAKGQEMPICI4Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9ED98DBF
	for <lists+usb-storage@lfdr.de>; Thu, 22 Aug 2019 10:32:30 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id f11sf2939655edn.9
        for <lists+usb-storage@lfdr.de>; Thu, 22 Aug 2019 01:32:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566462750; cv=pass;
        d=google.com; s=arc-20160816;
        b=emuMIRPBFTX0Rz6ypetdxK70qfZRIgIU9GzLDqwbK2JgVnfJ6ayp8Lex535ejdB4cq
         vW+n1xj2bQ/WM21l5E45S3uNNe4xB02gqMmw/4VwNeKRytKCQ8faHBTh/Pg6Q4LBRA8B
         4wZ3jj6uAUTm+/PJ+Sy9elU+8GYS8xYb45N5bVSrgW1ahT7SJWLQ34rMdUI/zU2iN8tp
         8jxRY7PG70XX7exjKUS2keEg6yZFWEsyDs2JTkVQlnDZUrm2gTwPdjXQ2CdYF1gDrjhY
         EE7rRTXODAUyPpMeOgrKF6sujSKQIXtHLsbD5VkkqCoKznEtAbnRC488owBKlbpTumkr
         jogg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=STSZOkGfcBRaWZlPtcfX9FC7g4IoOM12DvpUryOpF/4=;
        b=hokxBbQNoG99vO5NOAVeJO9+iFS/yeXRcaXvdyFZ9I2S1JrZ3kAursoB22BZtRrqZg
         TEuax7OvKbq/oDyJCSAmUPq0AquM7yhvEGHhnwHDEbSiTt8CZG4+crYF6gzIsFCrXNfR
         AbGkOc1XJTA7gA+U84ojeocDXGYizdqiQqzcjLKFsxMlYZSLF6BT5Z1mEUURuFOEOZiO
         bxNJDLmYg+VV053wBNfsfCr1qy977TCGf2ljwZMcegePyIvyewolmTN/Ksw+064xNE0v
         VxdZJ6EteUqZW5uknKc0oqa0ifpeQ6VhS7zdtVxtShHFRkMZ9VX/+UWH/PRPQ+eobzAN
         nCtw==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E8c1BVe7;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=STSZOkGfcBRaWZlPtcfX9FC7g4IoOM12DvpUryOpF/4=;
        b=Z0ZY+nuCFb5DuTsEt7NTBNkEc4dnzYF366Pmu2ilnojv0W3nNr6XdOqxbpQF1obB8m
         /chCzb3/mgWCfJCd+cooATGobdhhg/MV1jvAF+XaIF4f2czJIpG7QysJJoJZVlVyPiyz
         QzhUkAgz27f2632mtAjdOvu9c8nQhJhkmh08w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=STSZOkGfcBRaWZlPtcfX9FC7g4IoOM12DvpUryOpF/4=;
        b=RpUCb6U25XZJSF3/PrPlIU60P/hGus2J6xXl00KiSK2OWa1LnOnsvNpUsIzsEwWwpE
         cJZWVshPsS7oDsP/SbyZI63JEHnOxRmeqTD35aLi0Ih9z3BALcHyXJjQG1Vr3g4xLqsw
         RNP03L1URq0fn9Mv+59bndnhrwa53ViCp/XxQhkRqsjv2aamaXcG+p/nBg4NgDRnG1gG
         +OQwjE0GqGJdH73BHjvMTTQ6QWnM+5Y8bkjHXz+1J+KKFBJDjSOEKYa/CylvH7YRwBpl
         F3qL/7AKPThGfvby1+9Vddcn3AyDNFQ7d0/f8bbozB3cdfKGYdL4dhRz9boawJG2DgEy
         zrgg==
X-Gm-Message-State: APjAAAWfpeQohGF/vztEU0KObgYtup70V3pZtQFmRfFkchgUCJcQYZ5+
	Xtdnu0r8sYUdgewDVua+yTCmsw==
X-Google-Smtp-Source: APXvYqyrhC8xlJkgE10QZiTKS3lp9EV9Y+FXXqbu/7DiX+CkA2BPqNkH6DZ0WBbdLxycbpPtTuqGGQ==
X-Received: by 2002:a17:907:207a:: with SMTP id qp26mr34236404ejb.12.1566462750277;
        Thu, 22 Aug 2019 01:32:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:3d8:: with SMTP id t24ls1727069edw.10.gmail; Thu,
 22 Aug 2019 01:32:29 -0700 (PDT)
X-Received: by 2002:a50:9f27:: with SMTP id b36mr40756739edf.64.1566462749574;
        Thu, 22 Aug 2019 01:32:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566462749; cv=none;
        d=google.com; s=arc-20160816;
        b=uNCbESKzWtSs6FPsmmCNy7Ne6dCVuEbv3qhMG0GWtBLLhAB0LmddcNRl0ayXPWaCl8
         qkPkOmZ9xmlZUUHxMf/9pcCxnYf41iDD9pKh4u5GswhyodNXQ8OSXio54he4x6iexDMP
         EiDKbE3VZLNLAaF7toGEJOopOO1clBkmJhT9QA8xZCyRmMA3Jumve0WNdtVGM75XXWSn
         omkQP2E0Z8RxzmGxSEC00z7thOV4EW514fBZhNMf6bE/rdhOqJrXit4R0Gr7Jq00HgIb
         hhopggJZOYrrTLSfOwmOaHJB0Oj+qs/IWGWh1rzVtf3RImASbhVPrL/MK5I7hrJXK5qY
         fg1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=4b70yh01yux8LseDePSC/DiDISC+4IVFYV73p/rz2+o=;
        b=ljpupgPFbjvBZMD8qz+2tD5L1R9kLNYIxi7BsRdm7f9MN6OXdcHfFRn4xmwpvTp2+T
         yjbpE4X9+PVMigkbnJ5Qg6/vDyV/hqgdzKfFbH5oTjgDMXLByHXaqGqxEcaG0nm2uIPC
         f1F0kn8sDQwU9ui4528jQpfR3Sk2f30OQbZ3cZmKd5DDaUbzAAEEpzMIMDYN/RCJa+4h
         cmw8FKi5cVnGRaADbeXklxYgQisdmQ6K/dWcrYJWs2t8LcilB9y5iusrMm5PaqVzrxyX
         TB84d3BhARPUIpTSFUs0ebeh4Pgl17vEKobgz2oR2e19p4Miftf6kJuJ4s9xM+bitrwQ
         +fiw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=E8c1BVe7;
       spf=pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=maennich@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id g19sor5782988ejj.20.2019.08.22.01.32.29
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Thu, 22 Aug 2019 01:32:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of maennich@google.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a5d:4ec6:: with SMTP id s6mr7356600wrv.327.1566462748883;
        Thu, 22 Aug 2019 01:32:28 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:210:e8f7:125b:61e9:733d])
        by smtp.gmail.com with ESMTPSA id p4sm22917436wrs.6.2019.08.22.01.32.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2019 01:32:27 -0700 (PDT)
Date: Thu, 22 Aug 2019 09:32:23 +0100
From: "'Matthias Maennich' via USB Mass Storage on Linux" <usb-storage@lists.one-eyed-alien.net>
To: Christoph Hellwig <hch@infradead.org>
Cc: linux-kernel@vger.kernel.org, kernel-team@android.com, arnd@arndb.de,
	geert@linux-m68k.org, gregkh@linuxfoundation.org, hpa@zytor.com,
	jeyu@kernel.org, joel@joelfernandes.org,
	kstewart@linuxfoundation.org, linux-arch@vger.kernel.org,
	linux-kbuild@vger.kernel.org, linux-m68k@lists.linux-m68k.org,
	linux-modules@vger.kernel.org, linux-scsi@vger.kernel.org,
	linux-usb@vger.kernel.org, lucas.de.marchi@gmail.com,
	maco@android.com, maco@google.com, michal.lkml@markovi.net,
	mingo@redhat.com, oneukum@suse.com, pombredanne@nexb.com,
	sam@ravnborg.org, sspatil@google.com, stern@rowland.harvard.edu,
	tglx@linutronix.de, usb-storage@lists.one-eyed-alien.net,
	x86@kernel.org, yamada.masahiro@socionext.com
Subject: [usb-storage] Re: [PATCH v3 10/11] RFC: usb-storage: export symbols
 in USB_STORAGE namespace
Message-ID: <20190822083223.GA15709@google.com>
References: <20190813121733.52480-1-maennich@google.com>
 <20190821114955.12788-1-maennich@google.com>
 <20190821114955.12788-11-maennich@google.com>
 <20190821231329.GA369@infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <20190821231329.GA369@infradead.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: maennich@google.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=E8c1BVe7;       spf=pass
 (google.com: domain of maennich@google.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=maennich@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Matthias Maennich <maennich@google.com>
Reply-To: Matthias Maennich <maennich@google.com>
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

On Wed, Aug 21, 2019 at 04:13:29PM -0700, Christoph Hellwig wrote:
>On Wed, Aug 21, 2019 at 12:49:25PM +0100, Matthias Maennich wrote:
>> Modules using these symbols are required to explicitly import the
>> namespace. This patch was generated with the following steps and serves
>> as a reference to use the symbol namespace feature:
>>
>>  1) Define DEFAULT_SYMBOL_NAMESPACE in the corresponding Makefile
>>  2) make  (see warnings during modpost about missing imports)
>>  3) make nsdeps
>>
>> Instead of a DEFAULT_SYMBOL_NAMESPACE definition, the EXPORT_SYMBOL_NS
>> variants can be used to explicitly specify the namespace. The advantage
>> of the method used here is that newly added symbols are automatically
>> exported and existing ones are exported without touching their
>> respective EXPORT_SYMBOL macro expansion.
>
>So what is USB_STORAGE here?  It isn't a C string, so where does it
>come from?  To me using a C string would seem like the nicer interface
>vs a random cpp symbol that gets injected somewhere.

To be honest, I would also prefer an interface that uses C strings or
literals for the new EXPORT_SYMBOLS* macros:

  EXPORT_SYMBOL_NS(mysym, "USB_STORAGE");

  or

  const char USB_STORAGE_NS[] = "USB_STORAGE";
  EXPORT_SYMBOL_NS(mysym, USB_STORAGE_NS);

The DEFAULT_SYMBOL_NAMESPACE define within Makefiles would get a bit
more verbose in that case to express the literal:
  ccflags-y += -DDEFAULT_SYMBOL_NAMESPACE="\"USB_STORAGE\""


The main reason against that, is, that in the expansion of
EXPORT_SYMBOL_NS, we define the ksymtab entry, which name is
constructed partly by the name of the namespace:

   static const struct kernel_symbol __ksymtab_##sym##__##ns  ...
                                                        ^^^^

For that we depend on a cpp symbol to construct the name. I am not sure
there is a reasonable way of getting rid of that without ending up
constructing the ksymtab entries completely in asm as it is already done
in case of PREL32_RELOCATIONS. But I am happy to be corrected.

For reference that is done in patch 03/11 of this series:
https://lore.kernel.org/lkml/20190821114955.12788-4-maennich@google.com/

Cheers,
Matthias

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190822083223.GA15709%40google.com.
