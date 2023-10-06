Return-Path: <usb-storage+bncBD6LRVPZ6YGRB7UKQGUQMGQEWMRNBII@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc48.google.com (mail-oo1-xc48.google.com [IPv6:2607:f8b0:4864:20::c48])
	by mail.lfdr.de (Postfix) with ESMTPS id A4DD87BBDDB
	for <lists+usb-storage@lfdr.de>; Fri,  6 Oct 2023 19:35:59 +0200 (CEST)
Received: by mail-oo1-xc48.google.com with SMTP id 006d021491bc7-57ec006f715sf2997305eaf.3
        for <lists+usb-storage@lfdr.de>; Fri, 06 Oct 2023 10:35:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1696613758; cv=pass;
        d=google.com; s=arc-20160816;
        b=JwDXrcZ7h0qqkItIN59kxP4qT9EX6HO5bUMKZ0HPLTJ35I8MImQVp0U1k2kdqamnhd
         bc/ayhPfew4P2NQQtjqgiyszu4qdoUDmTBbnJgMcqP4hhUNGyVeMv9wIDpF+HnDy7l2/
         CV+lRcuEQ9/p/SIOqY73IDz0oo0PrPe6gorM/LUH6lgNAwj9HlUBd7fmnRZseRy/tplt
         kWzYmDO5UznHIfNXZESorUjwVhZrRX1Eo4rOu2YN3Tg5+qqGrGz9v1orTH9uMVMOgIaK
         z2iYNfo6JD2ipy8QgHNZcD34cFXz9ntx1VZYzdP1czzHHHD0J6t6sO8UHIpmt2vtVe2b
         6wyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kfeeRgr2HDnoudGay4na/xfr3R+xG3pEkRj432u6m6k=;
        fh=kvpULo+2AZq4Wqdduw5izQWSbOSxdORzDRc3JwUeeX4=;
        b=MJ2+1TCwI4dpaWNwzpdYmk3fQcCqgPXMoOlna4N7vFbmMpXbleG5sUrKgODP05KKnT
         VPKzPGlQWBDgHwpdRL2XcwhiyzaGkIhaO0ejsnE+5P41HrQzp7jbIyD0KaCrbiqXKRuk
         UOAm9HRlIup7loeRwd7EbwGCb/t29uc5ZHlp1uWszQqLJJo+huQTy61vfi9mzdTPmJEb
         tBaPySZFGyIWU+eH+dfy3jzIuiCpQadI3BcFgTR+0icg0CdSFa3KQdq9KaFDugv/sNM8
         vuAn2eI2IKl8Cxhap8KL2HfaMuQ9gniQqteT/2Aph/NNbktknqu/cMXIQqOJrzRK93ZO
         k7ow==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1696613758; x=1697218558; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kfeeRgr2HDnoudGay4na/xfr3R+xG3pEkRj432u6m6k=;
        b=D8lroBgfiQlv+2rST6wiD1MVh7a9b74AExayqIfcr65uCT7fBkelcN5Qo9PWj8mIoz
         QUFswTh+t9NhT+4zMvnpT6XOVARhmKFFrsys1cfzGeF4ZGRGpuNl3IA0WTRfiId9Y+NR
         PtTfRrgZDqa4oVfr1stPgl8o62HxEPKIcO4Yw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696613758; x=1697218558;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kfeeRgr2HDnoudGay4na/xfr3R+xG3pEkRj432u6m6k=;
        b=EDOHNcXKNLw+i3+ODID67Zhf4r8I5WLXWYcPYzE0hzHsbadCzQ+3pAolMLNk1HSTJZ
         G3KsuH8LgNeS35Z9ixCyRbJvx+lYuTWQpNPhnOQtS7oOlQnuXmEE9pZfampk4id0Lpwm
         fOfJyp0aQRAFk13zCX8VLMkO7vnfGoROlFsE0IGppsue0iG7RKFBcIU2xkX7CFGQoyUU
         Y0dFcevKKAKgzfJGY8iv30xX9CdGNPL3/1hK4o7GhCqTBKlidIfCujVlvfhQYGKw1Fh8
         6zCi/Xc8/oOJTycXAK0zEGOy/78Zp+aufU3IhYY4IeqHzKEVUM5WqyD+TI3nRutvLhdK
         PDjg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YyZnSsuLhC70RjVJARX3K5A7vGooxoAS61ljGjNN/vEMXkniM/S
	q/RGo7gffDr3vPRoV2+60wd7dw==
X-Google-Smtp-Source: AGHT+IGWOD6Lb5NR7KjJMPmBCJ48cPwapwUqEKLKeUVcDBhm1V7vgYZjuC5OLx4m/tvqDQDzhzR75g==
X-Received: by 2002:a4a:7556:0:b0:573:3fe0:cdd6 with SMTP id g22-20020a4a7556000000b005733fe0cdd6mr8390652oof.6.1696613758272;
        Fri, 06 Oct 2023 10:35:58 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a4a:4948:0:b0:57b:6325:be05 with SMTP id z69-20020a4a4948000000b0057b6325be05ls2780529ooa.1.-pod-prod-02-us;
 Fri, 06 Oct 2023 10:35:57 -0700 (PDT)
X-Received: by 2002:a05:6808:a81:b0:3ae:1675:700e with SMTP id q1-20020a0568080a8100b003ae1675700emr7938001oij.36.1696613757415;
        Fri, 06 Oct 2023 10:35:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1696613757; cv=none;
        d=google.com; s=arc-20160816;
        b=elwJ6XrlkbFSO/wYH4WkOMRyJeVUQCORvAEfF0WRlSMLTCTcnnNnpfzlphGoiDqN+I
         BqfNw9esjtkQrBrwOAEEDcqczchAvKqXvOBBY8+h5ma6DugNZ0E/lFFURRnSrEznsZSP
         tF53auI7mIoMwx3uAHpCD2NgHVOY7gNd20KLVAkmgo2RV7WHOooBjnSW9CLhomfs0ZeH
         j/YmnOzN2Aq2rP7dDDDVYncObYXX31Aj9IwZxSEfEnQoRedv9aclQa1+xCQ2T4D1GNMq
         bflgMZDjqGIcwgp4LTEf75WCk9Fs4Oeq67KwvJ6h2YTvm48YkxioW0lQqcF8ajhJOWQT
         3EzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=tasxdkbfIE403LKEk1j3O2M2LiwDX034kQsfv2cV138=;
        fh=kvpULo+2AZq4Wqdduw5izQWSbOSxdORzDRc3JwUeeX4=;
        b=yGOH+xTW0X78JHrYGKT4X/7ujyy4xVFm5JGh7TMcIa395LWxCJx2+dBD6IxcWjSSmS
         yaLprbprvs57SmC+lwUsxy9lhX1ix177Ci6FHH8QH1zO3LBUcswSgwg/MxfqHe8vNC5I
         AIvlOqF23EvqBDfWjYCF4eMzHDJdFINtvjJAVIiENt92dbA9u7ikF+CcM43fplpQb9tm
         u9dbFEWE8fKMbuX9iaZYonZ5VWkp7qmsLJsNKfYbxU/zyDV/hTA7b82kguy5WMbbFvPx
         RfwVagkeXiBc0Bgd1Sd1fnWOELlPPN7ZwpvImT1xAgGczbjgHvPd+IBKcPTpGONskf+H
         H8ng==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+652539ca@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id q29-20020a056808201d00b003af55bbddb9si1373491oiw.314.2023.10.06.10.35.57
        for <usb-storage@lists.one-eyed-alien.net>;
        Fri, 06 Oct 2023 10:35:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+652539ca@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 52300 invoked by uid 1000); 6 Oct 2023 13:35:56 -0400
Date: Fri, 6 Oct 2023 13:35:56 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  linux-scsi@vger.kernel.org, linux-block@vger.kernel.org, oneukum@suse.com,
  jonathan.derrick@linux.dev
Subject: [usb-storage] Re: [RFC PATCH 3/6] usb-storage: use fflags index only
 in usb-storage driver
Message-ID: <a81f4e04-fecf-4e04-9253-5dedec20c580@rowland.harvard.edu>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231006125445.122380-4-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231006125445.122380-4-gmazyland@gmail.com>
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

On Fri, Oct 06, 2023 at 02:54:42PM +0200, Milan Broz wrote:
> This patch adds a parameter to use driver_info translation function
> (which will be defined in the following patch).
> 
> Only USB storage driver will use it, as other drivers do not need
> more than 32-bit quirk flags.
> 
> Signed-off-by: Milan Broz <gmazyland@gmail.com>
> ---

Apart from the one issue noted below,

Reviewed-by: Alan Stern <stern@rowland.harvard.edu>

> diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
> index d1ad6a2509ab..72b48b94aa5f 100644
> --- a/drivers/usb/storage/usb.c
> +++ b/drivers/usb/storage/usb.c
> @@ -574,7 +574,7 @@ EXPORT_SYMBOL_GPL(usb_stor_adjust_quirks);
>  
>  /* Get the unusual_devs entries and the string descriptors */
>  static int get_device_info(struct us_data *us, const struct usb_device_id *id,
> -		const struct us_unusual_dev *unusual_dev)
> +		const struct us_unusual_dev *unusual_dev, int fflags_use_index)
>  {
>  	struct usb_device *dev = us->pusb_dev;
>  	struct usb_interface_descriptor *idesc =
> @@ -590,6 +590,7 @@ static int get_device_info(struct us_data *us, const struct usb_device_id *id,
>  			idesc->bInterfaceProtocol :
>  			unusual_dev->useTransport;
>  	us->fflags = id->driver_info;
> +
>  	usb_stor_adjust_quirks(us->pusb_dev, &us->fflags);
>  
>  	if (us->fflags & US_FL_IGNORE_DEVICE) {

Extraneous whitespace change.  This doesn't belong in the patch.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a81f4e04-fecf-4e04-9253-5dedec20c580%40rowland.harvard.edu.
