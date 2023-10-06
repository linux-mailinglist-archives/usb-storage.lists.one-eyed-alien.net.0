Return-Path: <usb-storage+bncBD6LRVPZ6YGRBMMGQGUQMGQE3NRS66Y@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc45.google.com (mail-oo1-xc45.google.com [IPv6:2607:f8b0:4864:20::c45])
	by mail.lfdr.de (Postfix) with ESMTPS id 951867BBDB7
	for <lists+usb-storage@lfdr.de>; Fri,  6 Oct 2023 19:26:10 +0200 (CEST)
Received: by mail-oo1-xc45.google.com with SMTP id 006d021491bc7-57de452a64fsf2749100eaf.2
        for <lists+usb-storage@lfdr.de>; Fri, 06 Oct 2023 10:26:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696613169; cv=pass;
        d=google.com; s=arc-20160816;
        b=X9IEsCEwMjiN3B4NdmaQr9dqWxjI3ShN2btr3i6os+ocIkM/wOt0IgPhFXf8Keh0JZ
         0MXu52B/1FfTRUft9TlwBsQbGWskLw29YQ0MbMCBnntz7KB38z2JnEfqal5NhKL90hV1
         bcJPCO8cy9JcXCqvlMqnNu2lqEAkv//RHz9FziwK8Fhh7X8F4Vj2ExJxNEEKsoqO74J0
         9j0pV4pGluzns2S7i1jUMuteFke+Yx8qieiFlK5RxoG6lblaeeN7IJBVaobIXzo10WFu
         FHHQQPsGlAOy0ZUW9rXFlL9rE2bLbVGMP+lQQuWXl6A/aznt6n6KxvPKDpnerw6U+6i6
         +J2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tQtq87u4ZKnGwpzpJhyLi/5Oqm7b2Zx2R8nJsw2Vpjs=;
        fh=kvpULo+2AZq4Wqdduw5izQWSbOSxdORzDRc3JwUeeX4=;
        b=ShH5KhShyTsSXk0LdUW3HzCfudPPiIZ3gbrhBEAvmNZQMaQk5MLsBGNjpe6a8MkCtZ
         tfLye2ZouOu6hamDorArpAqR5fQjJh/K+x88J82LLUGgOUhy2NjvgNPqLXE8UXEIEkuA
         4DM58tNgGRh/TCHam7gDjn9xzJK1RBuWZmkW9Ky35DWtT4KJYn8rCCA+9r3YAuPF1oUh
         6bMb3krkI07UtCAuO2AYevZ7nONFWfXGjXcdHuRa1wQNHj2TLKCLaZ246FIVJo26fNrV
         PSScBJFT8ePU6KfKLBCXJrn5PfSbCXJVzQlSPlVgRqBJ3koKGthb2lYsBCCz9wY9huac
         kviw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696613169; x=1697217969; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tQtq87u4ZKnGwpzpJhyLi/5Oqm7b2Zx2R8nJsw2Vpjs=;
        b=fkRRkgVy514IXEbW+yh2Nch1NoGtsASQJLW7Aigj8w8fNPT4s4Gi3+FlFvNUNIczdJ
         DE2pdz1MchBMPKXL3+UZZikEgpFqr4o9bS6vNSMHEIzwFBv2RXWFnSqciHZRISXofg/J
         LM4ozWRVgZK7KDFkqtNhXY4sHsI0wNZdjkWRA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696613169; x=1697217969;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tQtq87u4ZKnGwpzpJhyLi/5Oqm7b2Zx2R8nJsw2Vpjs=;
        b=nF52PNZwMkP4LNHF52awfEd7CL3hVBWKlvzvFkWbR2F8+YZMY4hZz7g7BwRDjzpTMo
         LdAIaZfsamMUtCcDBSsUBmWo6ovSevpqTOt24CqKIOLJKWG85TZic45ABtChXsFuuAgV
         D8YCRSrSVukI9mb23GyhmSZ/T28EHeTTeYQGpIEfgiG+KYYkMghspRSVclXYxiMw6OI2
         T/oJlmABnAuGhFJQmlms1MAhCq4dldUEcC/FWyulCrSIJGxB5vpkpZwOtg8CJgP5aQCT
         iTWCef+xlxR077nzRaZ3FON7Q2JTalv0tuh7d2ZXnpmgBie5pOJGPaEa51FI/N/FviJz
         U0dA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YxIJrWbgiLXXeLOfhl6VaNWJhOOmRnzVbfky5M+1GaATpnPMos/
	zcbSG8ySyDojgxSnD6cm+UyunA==
X-Google-Smtp-Source: AGHT+IGxyinNzmdt6pJ+PQeeGL0pTOyp/Dz/I/GPL4+ldVadCNNRjumOpbcvO9ImaDc41TWH+syXrQ==
X-Received: by 2002:a4a:301c:0:b0:56c:dce3:ce89 with SMTP id q28-20020a4a301c000000b0056cdce3ce89mr8967336oof.5.1696613169478;
        Fri, 06 Oct 2023 10:26:09 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:3341:0:b0:57b:7aef:9d22 with SMTP id q62-20020a4a3341000000b0057b7aef9d22ls482813ooq.0.-pod-prod-06-us;
 Fri, 06 Oct 2023 10:26:07 -0700 (PDT)
X-Received: by 2002:a9d:6e09:0:b0:6b9:a795:512f with SMTP id e9-20020a9d6e09000000b006b9a795512fmr8875993otr.10.1696613167156;
        Fri, 06 Oct 2023 10:26:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696613167; cv=none;
        d=google.com; s=arc-20160816;
        b=pwL7bLcZE/k/tg4plbNoQDfvQJrM+n8AsfHH9iSQszANq//498Hw2WNUIO5BfLXral
         Bf/I+uIofAHRKAF4obM8kowkquCYdFVIjO24bmXXuE50kDOUVK4HLGbEZgy1jV03zzCP
         RJHB/5bEX594bsHGaQuNe5xRuuXXAk8eLDME6F6e4VGJSlFDz0USlgHaKQU92KREd/Cd
         6EZNLLv/8ht8omu9a2Fl8LNP1ICbSmtnwiMamW7cb0rUZ2/HW8T1QKjoZl8CGtfRel0F
         ccWWvdY/lSxMtLMXsGJJoz54OMe8baPJsywYq4ugBopr73yzGZLfRIAvPieEYLHUd+iH
         R9Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=RqlWuvegyk7cbQAp/Sp3/8lTh72bXyc3xiz7WTalCMM=;
        fh=kvpULo+2AZq4Wqdduw5izQWSbOSxdORzDRc3JwUeeX4=;
        b=Le562tdYkKtPMGnY83QGKONkQVWzwXJ7ZsdtDLrWqRPTocWqZ8UxegFJZDq1gt/Rk1
         MSuQo54h+sEHWZOztcpHY1+1mJS1huXru6b9B3FfpuPq9/eMLUmYUhb7BWm6zvCmY0+f
         S3dTQa9fqYIUbxDcZpjDyr6rB4lT7KTbbmpLqy27IeQl9J+VLYEeLQ+iW2auKkVZ/dM2
         BTx6WhjPvAwXcob6Wbt1aDwEMfMdCJcB00O34cQKCCumJS8Sxa43FiYsOPoxaIfDF+GQ
         8nP7hXUtlLyGBDTi0dv6007Yv15BNVN8lr5rW/mYJB1cxczVfw7nCYs5pJThFemOQ43o
         5Ffg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id j16-20020a9d7d90000000b006b9ed4afad9si1393528otn.317.2023.10.06.10.26.06
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 06 Oct 2023 10:26:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 51972 invoked by uid 1000); 6 Oct 2023 13:26:06 -0400
Date: Fri, 6 Oct 2023 13:26:06 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-scsi@vger.kernel.org, linux-block@vger.kernel.org, oneukum@suse.com,
  jonathan.derrick@linux.dev
Subject: [usb-storage] Re: [RFC PATCH 2/6] usb-storage: make internal quirks
 flags 64bit
Message-ID: <0135a490-59f7-4ef2-bc25-6b89497ac5db@rowland.harvard.edu>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231006125445.122380-3-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231006125445.122380-3-gmazyland@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
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

On Fri, Oct 06, 2023 at 02:54:41PM +0200, Milan Broz wrote:
> Switch internal usb-storage quirk value to 64-bit as quirks currently
> already use all 32 bits.
> 
> (Following patches are needed to properly use driver_info
> for 64-bit value.)
> 
> Signed-off-by: Milan Broz <gmazyland@gmail.com>
> ---

Reviewed-by: Alan Stern <stern@rowland.harvard.edu>

>  drivers/usb/storage/uas-detect.h   | 4 ++--
>  drivers/usb/storage/uas.c          | 4 ++--
>  drivers/usb/storage/usb.c          | 8 ++++----
>  drivers/usb/storage/usb.h          | 4 ++--
>  drivers/usb/storage/usual-tables.c | 2 +-
>  5 files changed, 11 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/usb/storage/uas-detect.h b/drivers/usb/storage/uas-detect.h
> index d73282c0ec50..4d3b49e5b87a 100644
> --- a/drivers/usb/storage/uas-detect.h
> +++ b/drivers/usb/storage/uas-detect.h
> @@ -54,12 +54,12 @@ static int uas_find_endpoints(struct usb_host_interface *alt,
>  
>  static int uas_use_uas_driver(struct usb_interface *intf,
>  			      const struct usb_device_id *id,
> -			      unsigned long *flags_ret)
> +			      u64 *flags_ret)
>  {
>  	struct usb_host_endpoint *eps[4] = { };
>  	struct usb_device *udev = interface_to_usbdev(intf);
>  	struct usb_hcd *hcd = bus_to_hcd(udev->bus);
> -	unsigned long flags = id->driver_info;
> +	u64 flags = id->driver_info;
>  	struct usb_host_interface *alt;
>  	int r;
>  
> diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
> index 2583ee9815c5..696bb0b23599 100644
> --- a/drivers/usb/storage/uas.c
> +++ b/drivers/usb/storage/uas.c
> @@ -37,7 +37,7 @@ struct uas_dev_info {
>  	struct usb_anchor cmd_urbs;
>  	struct usb_anchor sense_urbs;
>  	struct usb_anchor data_urbs;
> -	unsigned long flags;
> +	u64 flags;
>  	int qdepth, resetting;
>  	unsigned cmd_pipe, status_pipe, data_in_pipe, data_out_pipe;
>  	unsigned use_streams:1;
> @@ -988,7 +988,7 @@ static int uas_probe(struct usb_interface *intf, const struct usb_device_id *id)
>  	struct Scsi_Host *shost = NULL;
>  	struct uas_dev_info *devinfo;
>  	struct usb_device *udev = interface_to_usbdev(intf);
> -	unsigned long dev_flags;
> +	u64 dev_flags;
>  
>  	if (!uas_use_uas_driver(intf, id, &dev_flags))
>  		return -ENODEV;
> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index bb1fbeddc5aa..d1ad6a2509ab 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -460,13 +460,13 @@ static int associate_dev(struct us_data *us, struct usb_interface *intf)
>  #define TOLOWER(x) ((x) | 0x20)
>  
>  /* Adjust device flags based on the "quirks=" module parameter */
> -void usb_stor_adjust_quirks(struct usb_device *udev, unsigned long *fflags)
> +void usb_stor_adjust_quirks(struct usb_device *udev, u64 *fflags)
>  {
>  	char *p;
>  	u16 vid = le16_to_cpu(udev->descriptor.idVendor);
>  	u16 pid = le16_to_cpu(udev->descriptor.idProduct);
> -	unsigned f = 0;
> -	unsigned int mask = (US_FL_SANE_SENSE | US_FL_BAD_SENSE |
> +	u64 f = 0;
> +	u64 mask = (US_FL_SANE_SENSE | US_FL_BAD_SENSE |
>  			US_FL_FIX_CAPACITY | US_FL_IGNORE_UAS |
>  			US_FL_CAPACITY_HEURISTICS | US_FL_IGNORE_DEVICE |
>  			US_FL_NOT_LOCKABLE | US_FL_MAX_SECTORS_64 |
> @@ -605,7 +605,7 @@ static int get_device_info(struct us_data *us, const struct usb_device_id *id,
>  		us->fflags &= ~US_FL_GO_SLOW;
>  
>  	if (us->fflags)
> -		dev_info(pdev, "Quirks match for vid %04x pid %04x: %lx\n",
> +		dev_info(pdev, "Quirks match for vid %04x pid %04x: %llx\n",
>  				le16_to_cpu(dev->descriptor.idVendor),
>  				le16_to_cpu(dev->descriptor.idProduct),
>  				us->fflags);
> diff --git a/drivers/usb/storage/usb.h b/drivers/usb/storage/usb.h
> index fd3f32670873..97c6196d639b 100644
> --- a/drivers/usb/storage/usb.h
> +++ b/drivers/usb/storage/usb.h
> @@ -95,7 +95,7 @@ struct us_data {
>  	struct usb_interface	*pusb_intf;	 /* this interface */
>  	const struct us_unusual_dev   *unusual_dev;
>  						/* device-filter entry     */
> -	unsigned long		fflags;		 /* fixed flags from filter */
> +	u64			fflags;		 /* fixed flags from filter */
>  	unsigned long		dflags;		 /* dynamic atomic bitflags */
>  	unsigned int		send_bulk_pipe;	 /* cached pipe values */
>  	unsigned int		recv_bulk_pipe;
> @@ -192,7 +192,7 @@ extern int usb_stor_probe2(struct us_data *us);
>  extern void usb_stor_disconnect(struct usb_interface *intf);
>  
>  extern void usb_stor_adjust_quirks(struct usb_device *dev,
> -		unsigned long *fflags);
> +		u64 *fflags);
>  
>  #define module_usb_stor_driver(__driver, __sht, __name) \
>  static int __init __driver##_init(void) \
> diff --git a/drivers/usb/storage/usual-tables.c b/drivers/usb/storage/usual-tables.c
> index b3c3ea04c11c..a26029e43dfd 100644
> --- a/drivers/usb/storage/usual-tables.c
> +++ b/drivers/usb/storage/usual-tables.c
> @@ -19,7 +19,7 @@
>  		    vendorName, productName, useProtocol, useTransport, \
>  		    initFunction, flags) \
>  { USB_DEVICE_VER(id_vendor, id_product, bcdDeviceMin, bcdDeviceMax), \
> -  .driver_info = (flags) }
> +  .driver_info = (kernel_ulong_t)(flags) }
>  
>  #define COMPLIANT_DEV	UNUSUAL_DEV
>  
> -- 
> 2.42.0
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/0135a490-59f7-4ef2-bc25-6b89497ac5db%40rowland.harvard.edu.
