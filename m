Return-Path: <usb-storage+bncBD6LRVPZ6YGRBVUUY32QKGQEROCYCHQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qk1-x745.google.com (mail-qk1-x745.google.com [IPv6:2607:f8b0:4864:20::745])
	by mail.lfdr.de (Postfix) with ESMTPS id BAB281C5C52
	for <lists+usb-storage@lfdr.de>; Tue,  5 May 2020 17:46:31 +0200 (CEST)
Received: by mail-qk1-x745.google.com with SMTP id k138sf2511523qke.15
        for <lists+usb-storage@lfdr.de>; Tue, 05 May 2020 08:46:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588693590; cv=pass;
        d=google.com; s=arc-20160816;
        b=J4IlnDSngRZdLcICjaMB/pPcJdGCAU+BMwefdODT2+L4jmG3BmET3QxSrY8P4sOPpG
         PozcEPSNglxlQC8zD3Q3VxY03a/UAENpWt8eNYAMotn1C8Hagzn9QYuOD2+8QPswFsxU
         Pm1uq5+5w7xhkoQYMV/X1kZMKimbtOFiv7c1/paQkUSdI9MNSSDTRLJ8ybQJz1IPumsn
         TmWdTVfnRoEzSC67Yriatq/pK1CpqBTyoPdypfZdBqS0vl5yGNIxRUG7cf2unUAqpsat
         pRUsbx9r6Vr5/kYl0fLohsFeATDDynBr5tCwSl+8z58l0akptrspZmWwAq6UGh0RZ6mW
         WI7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:in-reply-to
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=1+knZmdTWGsRsObyYqrTeC203TRxKoRTmwi+Fr3Ug7w=;
        b=Ho4iRw8JoOOyDKKI28VPr5KcgBtbtY2mDrmLkVSqjhDkcvcyoj8/tNUWvSoGZr8gzb
         7ZDfEsWL2yvr2jdLHTvy/kyZHVcAQaY52rc4Y13so2VXa4wUUpWju6g3WZjPrqxvN5is
         Yed8ryXVsSXtO7wWo46Rl2qkbhK7yGnkfjXj3dDVRJu/2Js2mfQyTauKxURAOHZIU/m3
         mpy+RyReoEpez+KEXUBbwja/O+2qG0az0PrCngq+sj95l/46cKKZlGf5wfhaAOxzNL8Q
         qso6FzlrMgKTCyksJcHDUAzS1lWkhoYAsyAZvKApMnSxukMHq4aK4EYTYVNKYQK14+Td
         /1Fg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+5ea2e99e@rowland.harvard.edu designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5ea2e99e@rowland.harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1+knZmdTWGsRsObyYqrTeC203TRxKoRTmwi+Fr3Ug7w=;
        b=GgTiEKKF5ovE/1FZ/WsCQg8fsF+X7OkPM4ZzyY37w13csSbtdMOULMTkZL4+/dhzvK
         +tEiqqAtjJBdBiVn21NYd2S+9vSQ9s1DkYQOmV4fRCTCRLDesPuLEib/1o32UH+y9JlP
         zskAwo5/HKgS+vx4bRvuy5ARBBL5uBSWWMVO4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1+knZmdTWGsRsObyYqrTeC203TRxKoRTmwi+Fr3Ug7w=;
        b=YzlMfdtAp4e9rQdZ6pGDpV1mErmQIPUpQ+Ou4UY+ZWrYUZjql4s/6BETt4RLJGQKtj
         3a8d5EenZa5UdEn6AtUL8i9kYe8N820OHXc1gi2x10rn6HPaHV7S+/qU1Rv46ncPM3zn
         hBfSh78g+SBmS6jXXzi8kvRNhu52IMCuGnhYioUEqpLTWfb5jp39wMV7TEQZuykB4TMB
         S++xQAXiMbXrPlv4aIrMunt0MCeRKUk40ILakAKD/hMlTHGcfYjMhIS86fSoIL/tcnBE
         K8Q9HIrEE8GM6g9gJND0odoI5kP9iUesMkhhits4W2b0sdCHwleOcbeZrP3aSBn0ew0u
         owpQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AGi0PuZR9Qxsx+/9BDgLph7yjP+nNKIFv+CUvgNKQI15U1XPut4yx8yN
	ttHxVMh+gNUzErYIdJFYS88bNQ==
X-Google-Smtp-Source: APiQypK+5jk3JhXvsI4bnquuZs0BRqhoHzotiCubfGAaGdEIdTH+X9SWUlyd7wtvZ1aXekQfYn0QGQ==
X-Received: by 2002:ac8:1cf:: with SMTP id b15mr3264911qtg.389.1588693590757;
        Tue, 05 May 2020 08:46:30 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:620a:1237:: with SMTP id v23ls2183182qkj.11.gmail; Tue,
 05 May 2020 08:46:30 -0700 (PDT)
X-Received: by 2002:a37:658a:: with SMTP id z132mr3481822qkb.267.1588693589593;
        Tue, 05 May 2020 08:46:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588693589; cv=none;
        d=google.com; s=arc-20160816;
        b=R+8zjXf5mqWqKrsWY2Zgc4V6OktkDpHArKMbErUVHtf8Ns3O0hG/6AkdDAOtzg+tfC
         iW5pf1pTQ74/W51yYTK9Koun2ll8TY2Tnr27dbeHcPitZZsVWZicBAVTCqOSw3TKOArM
         k2RLdX87ylyeSGkdG3uvfQbJ7kNc4txhlbAFfsvPDTZAKgHCW2cHBBZTfI95BbVNcWff
         L75hK1mr6mR+Sr0aOHCcA0PQWovt8BuE6KW0ro6BTJHQwn8GFiEvKrTHWjR1d/4i6gq9
         Jzdi+uHPpikxnyvi+n1hXKUIDX73FDzQDdSyIhbE1dwdWNqN1JH6N6r3G+BBuRhk6HJe
         XcuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:in-reply-to:subject:cc:to:from:date;
        bh=1+knZmdTWGsRsObyYqrTeC203TRxKoRTmwi+Fr3Ug7w=;
        b=sD5e5yCgMCmUqJLXrIaX3sHPZnKv/CBL2YgIfapJI1Px63hvZInKfisLcj+616uh1T
         YFZOXB+vIAW6Syjvj0XjSPkxE0OfJk53dIHSIh2vkaSQICRcHXGR0ezPv9Rqrp1HBWyd
         pGQjnfa/XO5RzOxI7/9zMotnsnBZJtSIG/+vL2t5nJ0aTsdmMgqVRKu55WLaPLBdDvHl
         YTOrPKcU2joxXoG9rBSGltYvUZTMAExcYePdD4uIiO0m78o/5vIZXkdkyNZN5jQH1vSW
         kLtSVyRwQFHZpOMbatYtmTQfu3nJWxcIZkasdElPB95wbqd2XugfqwLJ1i8iTVQPZ91k
         aJEQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+5ea2e99e@rowland.harvard.edu designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+5ea2e99e@rowland.harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id y62si1430467qka.278.2020.05.05.08.46.29
        for <usb-storage@lists.one-eyed-alien.net>;
        Tue, 05 May 2020 08:46:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+5ea2e99e@rowland.harvard.edu designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 26239 invoked by uid 500); 5 May 2020 11:46:28 -0400
Received: from localhost (sendmail-bs@127.0.0.1)
  by localhost with SMTP; 5 May 2020 11:46:28 -0400
Date: Tue, 5 May 2020 11:46:28 -0400 (EDT)
From: Alan Stern <stern@rowland.harvard.edu>
X-X-Sender: stern@netrider.rowland.org
To: Hannes Reinecke <hare@suse.de>, Greg KH <greg@kroah.com>
cc: Oliver Neukum <oneukum@suse.de>, USB list <linux-usb@vger.kernel.org>, 
    USB Storage list <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH] sierra-ms: do not call scsi_get_host_dev()
In-Reply-To: <20200505143019.57418-1-hare@suse.de>
Message-ID: <Pine.LNX.4.44L0.2005051146040.23429-100000@netrider.rowland.org>
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+5ea2e99e@rowland.harvard.edu designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+5ea2e99e@rowland.harvard.edu
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

On Tue, 5 May 2020, Hannes Reinecke wrote:

> scsi_get_host_dev() will create a virtual device such that either
> the target id is ignored from scanning (if 'this_id' is set to
> something which can be reached during scanning) or if the driver
> needs a scsi device for the HBA to send commands to.
> Neither is true for sierra-ms; 'this_id' remains at the default
> value '-1' and the created device is never ever used within
> the driver.
> So kill it.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.de>
> ---
>  drivers/usb/storage/sierra_ms.c | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/drivers/usb/storage/sierra_ms.c b/drivers/usb/storage/sierra_ms.c
> index e605cbc3d8bf..b9f78ef3edc3 100644
> --- a/drivers/usb/storage/sierra_ms.c
> +++ b/drivers/usb/storage/sierra_ms.c
> @@ -129,15 +129,11 @@ int sierra_ms_init(struct us_data *us)
>  	int result, retries;
>  	struct swoc_info *swocInfo;
>  	struct usb_device *udev;
> -	struct Scsi_Host *sh;
>  
>  	retries = 3;
>  	result = 0;
>  	udev = us->pusb_dev;
>  
> -	sh = us_to_host(us);
> -	scsi_get_host_dev(sh);
> -
>  	/* Force Modem mode */
>  	if (swi_tru_install == TRU_FORCE_MODEM) {
>  		usb_stor_dbg(us, "SWIMS: Forcing Modem Mode\n");
> 

Acked-by: Alan Stern <stern@rowland.harvard.edu>

