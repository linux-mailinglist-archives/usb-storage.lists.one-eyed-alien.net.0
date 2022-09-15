Return-Path: <usb-storage+bncBD6LRVPZ6YGRBPH3RWMQMGQEDEQIBAQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oo1-xc47.google.com (mail-oo1-xc47.google.com [IPv6:2607:f8b0:4864:20::c47])
	by mail.lfdr.de (Postfix) with ESMTPS id 378A15BA13A
	for <lists+usb-storage@lfdr.de>; Thu, 15 Sep 2022 21:32:14 +0200 (CEST)
Received: by mail-oo1-xc47.google.com with SMTP id k3-20020a4a8503000000b0047463a13402sf9776345ooh.2
        for <lists+usb-storage@lfdr.de>; Thu, 15 Sep 2022 12:32:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1663270333; cv=pass;
        d=google.com; s=arc-20160816;
        b=vsCOd2RxD5rSQ9++FaYpOVPhxg7RRsd5tRm/un2aVYhxteTM3m7DPO4Em7zuOx5ouR
         WsFpZ7A7jofWOc9jQaF67ut8a3ICrmo8r9wFz1Pqcz9geyEfJONfdvGPZUdRBigqmuSF
         NhqFfD6JhRqfDH6GeCaLDvBmhUU+jpzDSeBp1Xsp7qa0fECsq5y7T7VGsmW/cOtr0okU
         Weo3gtBkXvx5X3cmhp6/aMgedfPCAisnORgADEGwd2Fr90Rxxm4ufF5G6P/Z0BNq3q2E
         PqP0ttpLNPPVZosZqjPkWbAyJr3i9E+dF5qwbL8IAlLpZNxiv7vX1C4OCTReOeqMeZK1
         OwyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=k89aWvAev7ZjEQheDxEQE8BPY/Ht1or4GIN/MFnKnyo=;
        b=eGXYSpfqX9ujhdpSdH3ymDbEQvHY18+JQ/SRfNUjQQoTbNWKclLg82Vu4Gh31dCyLL
         t4MJuj46UN+Dtp3y195COwbuzWj8aPWObzSK9ELIOeirhGWdC7a2DxvQ5XF/3ywRpF+T
         mjSAeGb+N9lffr6A3KG/4gTqk43F9doP5+NmFphM3kQ3Y4viW9Y4BUokPIPXBT/1LNes
         BgSQoOLR37aMD1T6DGl+xf76iGy99mv/4yAI/3dCE6Iajm1NHCV2LSccie61Wd3N9quH
         hhCx02VFQnat/s76VtlipM59K+GlMeQrkewWVKZd2IOVtFAv9sNu1WZtnecbokZNmfU3
         2aeg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6336561a@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6336561a@netrider.rowland.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date;
        bh=k89aWvAev7ZjEQheDxEQE8BPY/Ht1or4GIN/MFnKnyo=;
        b=cHxwtiXC9WqV4hhCJyCv/b6WZWISamtfrRUcIZfsVn/m6/WtqMCTzg48iQWZGv42q/
         r9ttgxK139OkVHaa405oADbOSEJslW8PWpJWVCIUzAgQGxqTnZjFD7dy+/1+1nT+ejhF
         AfGSNlAgY1L3dxtBbiyOMvV9VZSOipwG7Qdto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-gm-message-state:sender:from:to:cc:subject:date;
        bh=k89aWvAev7ZjEQheDxEQE8BPY/Ht1or4GIN/MFnKnyo=;
        b=eHTJ+JeE0ifKXMxRzTbstiuGUOfGJHKgxcOzRy/dJQraFHk1T/cumZG1BFzhyMCYOH
         DowuHKrYJVkt+pJN0mELtd7Tw7VD5nCpBFD6NebJx1H8mVpBSVclAF0SRVIjSZOdiH6g
         5rBU3UsVkC/mX8BtM8K55EpHfmoKlTGiapqAEiipYfWpXa9cWCIoF3TOeBbjucg+FQqj
         f04XdKbZgp59fKXDhgMohjdfer08PQyuKJCgiTn9+xyk7UFzejG8Bh/kLx2WAhErNyDU
         RTbskaSBhodlFyETAVSCQqLrL4XJc59SbOdsf7vmx0/7mOzGFIZLqYtuqbMSHSHgqac/
         K8kA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: ACrzQf1yHp6jWV4FvevlQjghvDaZMvOR1gjXyYK/JBNr0Zi7h5sc8G4F
	t8XLLIwxT/JmAFEKJ8HUzCHOxA==
X-Google-Smtp-Source: AMsMyM7/pyUnTysm6u6SRsFyopfeQThnbFxn9gXApNRlx/W7I9/oOlweNgUM5NW+dp25KeD+kc0L8g==
X-Received: by 2002:a05:6808:15a2:b0:350:4f5c:1440 with SMTP id t34-20020a05680815a200b003504f5c1440mr782548oiw.129.1663270332982;
        Thu, 15 Sep 2022 12:32:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:aca:dbc2:0:b0:345:9a88:c799 with SMTP id s185-20020acadbc2000000b003459a88c799ls7085512oig.5.-pod-prod-gmail;
 Thu, 15 Sep 2022 12:32:12 -0700 (PDT)
X-Received: by 2002:a05:6808:d48:b0:343:1ed2:7d08 with SMTP id w8-20020a0568080d4800b003431ed27d08mr714263oik.197.1663270332371;
        Thu, 15 Sep 2022 12:32:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1663270332; cv=none;
        d=google.com; s=arc-20160816;
        b=k7T8pYCpSnsdo/y2cBZG829ukbeftL07i4izWbgIRfhaiRkbA6mY57wFS8v1i0fkAU
         wxytGq/bXYd4LZmlCTauDsNO4XYAm98s/btpKq+yrjdvKfATO+WyiW3ilZyM3mD1Jgb1
         4WH5TRalbO5tC8G0JFdAn2f30hlqVyg8NXvm0/5OkKbw5PCySeTFsQuUSaLDle3fLcJN
         HWrd4DIcZZWl57Kdse61urjB06CDGSP7yC2WdrhFzBBLn5Cs17nh64FAjAVOwZVdOy32
         gkemB6cfMxWFTUh2aeiYY6qynbcTmlM0q6qWIsSUq2EP+gajUS/nEBaptH2mqg52fM17
         IoZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=Ld+JM2UZ/NcSeJaJ6okdyYEccd1Pt++TZuBceE4wogM=;
        b=bjlhTOlfvBeVJtZjWMgXXBFj9/WgZ4PNF11K9aDGQP/jpPxWwmX4pIHeuUGeMyaw6N
         i8SrrLix1V7vdGpJd+zJiQ44D3WVwQIQhBctuMpBx2F6vFMX/K6e2Q8EFCp6K3/6Moe5
         CwF8BSRmrfIrcF84n5gclfqp9+F1BEtq0kxDGyrLWVprCIHqFJsnaIvU4LBUxyERU4li
         XBI4epAL8t3EVSVRyzwyc0hTOlryYncxitxanxaW4VPGYLYrNn+5iRuAJRDqxDTNY6Kv
         LE0oHXsXxDDM3HpYwIXuBT0EgV87X90AiwdkxwCmc3gyverDI22X+pDakEryq/+y9GTU
         3dFQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6336561a@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6336561a@netrider.rowland.org
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id o14-20020a056808124e00b00347cab2a694si15387448oiv.144.2022.09.15.12.32.12
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 15 Sep 2022 12:32:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6336561a@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 19587 invoked by uid 1000); 15 Sep 2022 15:32:11 -0400
Date: Thu, 15 Sep 2022 15:32:11 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Hongling Zeng <zenghongling@kylinos.cn>
Cc: gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, zhongling0719@126.com
Subject: [usb-storage] Re: [PATCH v6 2/3] usb-storage: Add Hiksemi USB3-FW to IGNORE_UAS
Message-ID: <YyN9u7EaXIKgLUmO@rowland.harvard.edu>
References: <1663210188-5485-1-git-send-email-zenghongling@kylinos.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <1663210188-5485-1-git-send-email-zenghongling@kylinos.cn>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6336561a@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6336561a@netrider.rowland.org
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

On Thu, Sep 15, 2022 at 10:49:48AM +0800, Hongling Zeng wrote:
> The UAS mode of Hiksemi USB_HDD is reported to fail to work on several
> platforms with the following error message, then after re-connecting the
> device will be offlined and not working at all.
> 
> [  592.518442][ 2] sd 8:0:0:0: [sda] tag#17 uas_eh_abort_handler 0 uas-tag 18
>                    inflight: CMD
> [  592.527575][ 2] sd 8:0:0:0: [sda] tag#17 CDB: Write(10) 2a 00 03 6f 88 00 00
>                    04 00 00
> [  592.536330][ 2] sd 8:0:0:0: [sda] tag#0 uas_eh_abort_handler 0 uas-tag 1
>                    inflight: CMD
> [  592.545266][ 2] sd 8:0:0:0: [sda] tag#0 CDB: Write(10) 2a 00 07 44 1a 88 00
>                    00 08 00
> 
> These disks have a broken uas implementation, the tag field of the status
> iu-s is not set properly,so we need to fall-back to usb-storage.
> 
> Signed-off-by: Hongling Zeng <zenghongling@kylinos.cn>
> ---
> Change for v1
>  - Change the email real name and the code worng place.
> 
> Change for v2
>  -Change spelling error.
> 
> Change for v3
>  -Add acked-by
> 
> Change for v4
>  -Fix version error
> 
> Change for v5
>  -change version
> 
> Change for v6
>  -Change the git message for patch 3
> ---

I already sent you an Acked-by: in v3 of this patch, and the patch 
hasn't changed significantly since then so you can keep the Acked-by: in 
this version.

Alan Stern

>  drivers/usb/storage/unusual_uas.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/usb/storage/unusual_uas.h b/drivers/usb/storage/unusual_uas.h
> index a6bf87a..8a18d58 100644
> --- a/drivers/usb/storage/unusual_uas.h
> +++ b/drivers/usb/storage/unusual_uas.h
> @@ -149,6 +149,13 @@ UNUSUAL_DEV(0x0bc2, 0xab2a, 0x0000, 0x9999,
>  		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
>  		US_FL_NO_ATA_1X),
>  
> +/* Reported-by: Hongling Zeng <zenghongling@kylinos.cn> */
> +UNUSUAL_DEV(0x0bda, 0x9210, 0x0000, 0x9999,
> +		"Hiksemi",
> +		"External HDD",
> +		USB_SC_DEVICE, USB_PR_DEVICE, NULL,
> +		US_FL_IGNORE_UAS),
> +
>  /* Reported-by: Benjamin Tissoires <benjamin.tissoires@redhat.com> */
>  UNUSUAL_DEV(0x13fd, 0x3940, 0x0000, 0x9999,
>  		"Initio Corporation",
> -- 
> 2.1.0

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/YyN9u7EaXIKgLUmO%40rowland.harvard.edu.
