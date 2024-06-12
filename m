Return-Path: <usb-storage+bncBD64ZMV5YYBRB4OLU6ZQMGQENDE2FBA@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qt1-x846.google.com (mail-qt1-x846.google.com [IPv6:2607:f8b0:4864:20::846])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BDD1905A87
	for <lists+usb-storage@lfdr.de>; Wed, 12 Jun 2024 20:16:18 +0200 (CEST)
Received: by mail-qt1-x846.google.com with SMTP id d75a77b69052e-43fb02db8basf984711cf.0
        for <lists+usb-storage@lfdr.de>; Wed, 12 Jun 2024 11:16:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1718216177; cv=pass;
        d=google.com; s=arc-20160816;
        b=fXqHzF7+jDsjkh0gfWNq+sbk9YqIIO8Rt1ZlVxO1lMtk9EA++5UEuyYx98nnbYXpfO
         obpvGxQOAlxIhi1Mgjq6b/kkuhT9cJ5kZhYiEgI9P9kh/a5RV3dfS9TSVtTqo0EuyzyG
         T4sTVy5T1+CHsoe38MCsb5yXl5kvzZNFjYfoSUNibLT+Mq0ajgn5iGy6S+L5LK1d8S7o
         6/R5dObljKuLi+2Qv76FDvB5RM9v+jjcNavaO5IwsjBq9GhLdQjUl58Tor1OYZIDuLsn
         8JRz7fjf340kfCEmoaPeqV7Cj9uZ9aIaxBXXLhB/dafxxVeB3wuvuLg811cWVS9wA6eV
         rChw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=p7FLwFITHK/jNof7gDDOV831fBZ31yv9TLsONtuk6Yc=;
        fh=ZVQ7aMtAYJjkXDZdcIfTTxPturb1UESCHsE5AwIv6gU=;
        b=RHuHTm4ejUMY54jmoIuLlO8/p3AO7Q659N2Np58ji6DLxT6Enoeoh7Ac2UyBIMtsk4
         V9Duu3c+Y+HIq5NpzQCc/TTnmdGxiVctnDwXlidm1ObD714LpINDhEPIXBtDetafMtKq
         kF/AA1kCiCTpLSxlcKPmA2rqForaLH4s2rZAwUPt+HPouqnudynZLWxflw5PPZFInB2E
         j7BnmXR4lvcabxd5l88784KKJX/OigZZS/LkoLcKtU95y0OWLEZJu75I7086SbWTmZde
         9ssXn/oc5JQEGIa1N7gy7Y0aloM5+Kft0zNm/tzrFhLVSgY63B3yN4ZdZrrCySGcs+rp
         3tig==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+666c43bc@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+666c43bc@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1718216177; x=1718820977; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p7FLwFITHK/jNof7gDDOV831fBZ31yv9TLsONtuk6Yc=;
        b=fmMEUtbDaebQX4GHsUyZF+JgXiBdkZxwDMzjC89eF1ceqXkAhRV+DHCvsZxCSdWaxq
         fWPmOfK1sg9djyqsV4E2zYZo1Kdl1oAVyi3YdVCm1JNmcTBr2AMXTYLTKhcxSj+22KYC
         uNF2QVASXD4YAWEQooqOPB8M07Qiw7IxK3GWc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718216177; x=1718820977;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p7FLwFITHK/jNof7gDDOV831fBZ31yv9TLsONtuk6Yc=;
        b=l1b14wVxCm9xf2TaaiaYE3xQ7dbT9ms2wwbYXtLqCinilgW/RjKd/CmUz+PZ3yfaxb
         XceOsUaiEV05XnrZknfmdg13cxEPy0GybzCHrQzr020j6YW3o5yaZHnF85hGSd7f+FMj
         aMopMy8Nx87ZI4TmB+oMAvcgR2DMJfAYQhYp+cD2NmJyD4SbbSbnZYoEowXylQT35ffl
         jddDtHoDEVsoW7zZGxSxkm1id5xc69xTOyXAHYdGsHg3yW/IGl9/fxfxSMOwI7YkggkC
         7pU+TU+5pCtyAztHFK5yX+7T5pLfnkE9M1aIynV76pIbbLFy4bmjQEWWahRbQe9N+tJy
         9PXg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUxVG3kFR/jU54IqpQv5YbsE7HWJbc9KudiVSTgsOY6caGnVAK/bO2hITK5HzPwpJH9WfVCq1Mx9BAJVuhM6X7hFdzmB5YRuAGU
X-Gm-Message-State: AOJu0Yx202a5MmuNyqU6RFDKgoDtoOaZ0jSb55k9J6DVgSpdIyXJY4qg
	z43f9ZI+LRxwJK39WmHcFYtpKBwRVCtyXZ+weNvdpWwpCTUY9869aNWkOu+VIaE=
X-Google-Smtp-Source: AGHT+IFPyzaYCC6eKN5meFD2TPPHc5UkqMEs3OKWVCpC7aenLz97x149WIwMhiIBhmtZu1jSGO5kiQ==
X-Received: by 2002:ac8:7c56:0:b0:440:a22f:ac61 with SMTP id d75a77b69052e-4415abf0b73mr24447621cf.32.1718216177226;
        Wed, 12 Jun 2024 11:16:17 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:ac8:5a15:0:b0:440:4eb7:2925 with SMTP id d75a77b69052e-4417ac23bdcls1656651cf.1.-pod-prod-01-us;
 Wed, 12 Jun 2024 11:16:16 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCVlCpVzDcdhwt8xAXE9pFKiVK8g2uH0ZL4flXqsFP3Gsu3poumTuLXuO2G3a8Py/ihKijkJRsfa3SNo/ynWt2dxgdaP4dtU3AqXMFshxbkJ75C856A=
X-Received: by 2002:a05:620a:4094:b0:796:7c8f:e660 with SMTP id af79cd13be357-797f60f5fb0mr242790785a.56.1718216176230;
        Wed, 12 Jun 2024 11:16:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1718216176; cv=none;
        d=google.com; s=arc-20160816;
        b=mOQ2pRXo3f/wWlfbfiq+rxb+6JQeIxWdzeajSsxCWiWOdDDZsFi11/ZSy1jAazti94
         sRS9CtGqa38I15ssGOLtU5FV5eQn079LIcf7/SBclmlhH/NzgQRlz5hGWs7Pu5jSNcaM
         FzrVN/VLrM9+DLQV7OUKZJ2xU3OkXJ5ecvkgsej5Mt0JsOhWA60te7vRM2ug7+NvxVzJ
         /2kwvybhCgBuadNuVT2b0699WmID8xrnc2Z/G4dili7vnC6/4NuYyhhpoBnfPNEBnr17
         kL+CFLQWn8VD3jbyKcKoadlFCwcZhkZmblxC8PP/8jujEAtjGeJ1mLtXei2S60tlpjmk
         1yeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=ZwQm61fjrWzhWXUF9gQP9qIWTAACp4dpejk9ajtWAXY=;
        fh=maimQYkmixcLBMuQt1F3vkzNjS+ZdKKmEeWotfgXJ9k=;
        b=hzxR7Qx48Df+fvudURHcSk7NdR8EuG0RfefGKhue+8NKLyNwMJ2hvN54aqy6Pud8Zv
         pYy2iOzEJGpQTqRbGf0pOhno1BfFZiAkKSga5eA30CYGrfSdoVf3OzsNXfdLzOINYarH
         JCr6ScbaZU5e6+Hni4rfq0nmAKY+5ETpgmfDsHRDXUVQZjD8PSUiOjZtyKFIT70HbTJE
         7GrUGbETvgms8P7JIn5ceyse5p66PprcUABPqGS0w84eH+PCDyljBr5XAPnBlq1rn+hR
         O8CQrbGi9XBIEQILKFeYbzuc17b62HwxpNb+WYt+kZRE7l5jkW9XXd+jTjacjD8sgsKe
         dM6A==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+666c43bc@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+666c43bc@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id af79cd13be357-7955615a0d3si1032144585a.488.2024.06.12.11.16.16
        for <usb-storage@lists.one-eyed-alien.net>;
        Wed, 12 Jun 2024 11:16:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+666c43bc@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 232816 invoked by uid 1000); 12 Jun 2024 14:16:15 -0400
Date: Wed, 12 Jun 2024 14:16:15 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Jeff Johnson <quic_jjohnson@quicinc.com>
Cc: Peter Chen <peter.chen@kernel.org>,
  Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  Oliver Neukum <oneukum@suse.com>, linux-usb@vger.kernel.org,
  linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, kernel-janitors@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] usb: add missing MODULE_DESCRIPTION() macros
Message-ID: <183a4d6a-30ad-4dce-b54d-3624aba36ac9@rowland.harvard.edu>
References: <20240611-md-drivers-usb-v1-1-8b8d669e8e73@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240611-md-drivers-usb-v1-1-8b8d669e8e73@quicinc.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+666c43bc@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+666c43bc@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
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

On Tue, Jun 11, 2024 at 07:37:20PM -0700, Jeff Johnson wrote:
> With ARCH=x86, make allmodconfig && make W=1 C=1 reports:
> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/core/usbcore.o
> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/mon/usbmon.o
> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/class/usbtmc.o
> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/storage/uas.o
> WARNING: modpost: missing MODULE_DESCRIPTION() in drivers/usb/chipidea/ci_hdrc_msm.o
> 
> Add the missing invocations of the MODULE_DESCRIPTION() macro.
> 
> Signed-off-by: Jeff Johnson <quic_jjohnson@quicinc.com>
> ---
> This is the remaining one-off fixes in usb.
> 
> Corrections to these descriptions are welcomed. I'm not an expert in
> this code so in most cases I've taken these descriptions directly from
> code comments, Kconfig descriptions, or git logs.  History has shown
> that in some cases these are originally wrong due to cut-n-paste
> errors, and in other cases the drivers have evolved such that the
> original information is no longer accurate.
> 
> Let me know if any of these changes need to be segregated into
> separate patches to go through different maintainer trees.

> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index a0c432b14b20..65f9940bc7e8 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -1150,4 +1150,5 @@ static void __exit usb_exit(void)
>  
>  subsys_initcall(usb_init);
>  module_exit(usb_exit);
> +MODULE_DESCRIPTION("USB support library");
>  MODULE_LICENSE("GPL");

I would change this to "USB core host-side support", or something more 
along those lines.  It's not just a library because it does include 
several drivers (such as the USB hub driver).  And it's host-side rather 
than device-side -- that's a separate module.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/183a4d6a-30ad-4dce-b54d-3624aba36ac9%40rowland.harvard.edu.
