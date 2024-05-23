Return-Path: <usb-storage+bncBD64ZMV5YYBRB74WXWZAMGQEN4LNUDQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf46.google.com (mail-qv1-xf46.google.com [IPv6:2607:f8b0:4864:20::f46])
	by mail.lfdr.de (Postfix) with ESMTPS id 75C0C8CD525
	for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 15:58:24 +0200 (CEST)
Received: by mail-qv1-xf46.google.com with SMTP id 6a1803df08f44-6a8d4b98157sf1623146d6.1
        for <lists+usb-storage@lfdr.de>; Thu, 23 May 2024 06:58:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1716472703; cv=pass;
        d=google.com; s=arc-20160816;
        b=VfIjoFJACrqTI5FPdNtb0xM9dy2Or4A9ug/ptVcVGLfiaDBvySiTpNKXCfgDD7+3gw
         6kDcd+Y5iVa7riFCHTxV+ksG1egRW+F56PExp6LcIsbO2fxZ5gFskpkhisCmwX1oyS/X
         uvBKYko9HflHQfN21eEnaI4/UzaJDuvy7SByE9y+/FTMrhAKwwg9/YIIXumCl8ds6oYP
         QaVTtgRKU+g3MMJZJy3G/tRTUBmhdYOLbbkFqdRaXdOBhRbpYgogUKnE6dDe5o6TBg7/
         yQYEqRVtiWuLL2MrdpoUCmT65Ylh37GwXsqtLs6xgSisbehXlsc2SMmPOZmb+r0cRLsA
         3i8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DX4KXzp/XTXSQxvBzcMmv+H+WnnlIws3cblQX54/qME=;
        fh=97vr9UPJWPnRZwlbO7+iGXyB9Gh1XtT0YHICOXh/UjQ=;
        b=wt3e0cLRitButFWZRq/PXFYDF7FthvDH8+sxcZ1fFOg5ZW0PuNHfff8dW4ufmbv+4r
         dKVyxcJ+w3VXVCrsLzhk7Kd6mEQpXwSwRGqpW1S7wEzqm6ARYR3zHrziHqMv2SXAmpiR
         kKHhMtdmu+zftvF5/auxBmeFk7N9zF+QIIozGaz/8UyfZ/ZbZnRtCJWOhWZg/KaGwTUI
         TdCmMRudq/InPJ935Y25x77Y2rO03eJsweNoaDFg0KBGMS+dG063HdrNLMYEPPsvfRmu
         o3BkoDS4ZC48PPSSwJ3wzgDWfalhhSVHEujhf25nVCCdIP+hVkuLuwZofoWotHaCUuS9
         dghA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1716472703; x=1717077503; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DX4KXzp/XTXSQxvBzcMmv+H+WnnlIws3cblQX54/qME=;
        b=hsNUvR1s/oBixFE3DbyiFXG8ImPZjrXUcHkYs2rDXO0bYOFMtHgI/hBkX+oQZ4gCjD
         ok8xhH0MzaYJKeZNsc5MM/7TZ07vBUiL5Vcw8pMwMCeKbnJnfnPxEIhPFpQWwSKviKal
         Nu7chwLkjMnbvtfiMO1e26tFCr74DxXbApKmg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716472703; x=1717077503;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DX4KXzp/XTXSQxvBzcMmv+H+WnnlIws3cblQX54/qME=;
        b=UQtFDBJ0ZgLG8dnaa8Yj7nn44KCC4HZnDCQ5/qxjiNKxTdijcsQJijL2Ip+e53R6ZS
         o9zeIIIkRPhXW3l1NBCo+ftAusjksV8tJLhPwtW06ToGy7aU75LHTc6EVDr2LL5GfqQx
         JwkT8XcG+A3La+7ScpEMJhFZz3V0KDVd6z6xQ6/GMaC9TpDoM36TWbndyZ0Ak7kp4WhM
         HACtcwN6hriiAJiH7zS8gWTGxys3V3+uunVg0qlHdjBhMsQOo+IDbaOPhI5XiGNEH5qV
         ugGo9PUEnauGk4qvzHr7UN2Q7KQF/W6aAGwFzXUHzeeE4UsRKktt6acsUrAw5a3Km59g
         GzmA==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCXyB7jPY3qGbeIzoRsYUslbT1zSa6SZCUhFoHSgjgVa4iEm5CmVF74SutR3OxIF5tk0npqN0vfq3aBhAOOoKwLahyUuD3UkFhnk
X-Gm-Message-State: AOJu0YwmZC0GjbP13QdpGVQR65kQHOu0P1WN1qI/E9wvapjuxpc59Fnm
	TRO2A+Gw6hamIO3a87iV+FwH0LPi3PWlPSO/CVkUNZ4+9ys60A7oqR85JLYcqEw=
X-Google-Smtp-Source: AGHT+IFTxdL9kj+mcDu62lAg9Msb2fwf+r8cDLpoMHYNJZElwEbTj/0n2A8TwTdsczfUgW5lh4qtkQ==
X-Received: by 2002:a05:6214:5902:b0:6aa:12cc:5adb with SMTP id 6a1803df08f44-6ab8087cde2mr46597266d6.33.1716472703410;
        Thu, 23 May 2024 06:58:23 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6214:2408:b0:6ab:7a2e:c3c1 with SMTP id
 6a1803df08f44-6ab95bed242ls7412696d6.2.-pod-prod-03-us; Thu, 23 May 2024
 06:58:22 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCV+Nl2NihfGFddpP+r+IcP1r3/gbrYZueKxDDcRckDNj8aeuaevEwE6UmuqsQxwRoFoovTQmnUbU6DgEs+JgMtqQvbM0K8k0F69w/GV9NDDkPeTKGc=
X-Received: by 2002:a05:6214:5548:b0:6a9:62b3:4f0a with SMTP id 6a1803df08f44-6ab808f6f93mr53822016d6.49.1716472702260;
        Thu, 23 May 2024 06:58:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1716472702; cv=none;
        d=google.com; s=arc-20160816;
        b=M2MKbL8yjBhXC8c74ihEOFsPszoPwHlsy1wlJ/SqV+j/omwwNmp8Gz8s/xoCfBP3s9
         Mja7BLPeuIxYgMVsgPosCX9+9UhV3+86VVQOkAiq64DR0cGa+qdcgaWhIRYWl2vidFMp
         4N3lpDDYb596GFD+ln7JDKGAmk2BBWV/HgrmHPmcf0nDPNLA8aHaOGPsvXxKJuq3y2oB
         LW96Owc8p4X/9yKYAgtEpB6cALfdIoACU8CDzgCZnKb7XBkwJQ7dVeXkgNm20RKXMGYm
         VfOw2Hn1GNg94BBzvGLx+5xBFqhE/2XDBwpyeyNKoG+V9MoeHCyMPt+BC5loj5kdnVrE
         LDbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=+IVfzfVnpsjQwrwRDelvZB+uUX5J2/CLWWBqbxOZrXc=;
        fh=c0Oc7wSUMHapCIkD3ff/I1F1lRNZD+z7U3Hce7kK5Wc=;
        b=TFn0vqEcwE5tmFqN2ZeId5Mv6kyns7csQ8Ij0v1IAVCk1yCCfuIxlOSI3aFidgcu/F
         aJ1stIB6uIjz4YZ8Ju3Qosg0K6yXvNkjJqgLe0h5SpA9leOKEnfCLSedTM6AYUXlTtwP
         Ceusd9hzHmueAGZa7xXzNphotnFrIVctjaQV1NpS78slTPb0sP9xjdpFvfdePLpiYCS7
         MYooMCr+OgnL3346pwdH+CCNeNpG9N3ZcB/UTOsJy5cIJG6+fWt8Ua8wpcYNwdygdXX+
         OwJ0FAYtY+nZOTGxf0U5Dvcs22KT25uTW2s/WF+ItuUTixIKuKnJr8WUnJVH4V3H3P+3
         q5UQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id 6a1803df08f44-6a15f305049si110015386d6.587.2024.05.23.06.58.22
        for <usb-storage@lists.one-eyed-alien.net>;
        Thu, 23 May 2024 06:58:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 538957 invoked by uid 1000); 23 May 2024 09:58:21 -0400
Date: Thu, 23 May 2024 09:58:21 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Shichao Lai <shichaorai@gmail.com>
Cc: gregkh@linuxfoundation.org, oneukum@suse.com, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org,
  xingwei lee <xrivendell7@gmail.com>, yue sun <samsun1006219@gmail.com>
Subject: [usb-storage] Re: [PATCHv2] Check whether divisor is non-zero before division
Message-ID: <a0afa88b-f84c-4b45-a265-2e6bcbb84b35@rowland.harvard.edu>
References: <20240523092608.874986-1-shichaorai@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20240523092608.874986-1-shichaorai@gmail.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+6652f266@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+6652f266@netrider.rowland.org;
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

On Thu, May 23, 2024 at 05:26:08PM +0800, Shichao Lai wrote:
> Since uzonesize may be zero, so judgements for non-zero are nessesary in both place.
> Previous check is moved out of loop, and one more check is added in alauda_write_lba.
> 
> Reported-by: xingwei lee <xrivendell7@gmail.com>
> Reported-by: yue sun <samsun1006219@gmail.com>
> Signed-off-by: Shichao Lai <shichaorai@gmail.com>
> ---
>  drivers/usb/storage/alauda.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/usb/storage/alauda.c b/drivers/usb/storage/alauda.c
> index 115f05a6201a..a6e60ef5cb0d 100644
> --- a/drivers/usb/storage/alauda.c
> +++ b/drivers/usb/storage/alauda.c
> @@ -818,6 +818,8 @@ static int alauda_write_lba(struct us_data *us, u16 lba,
>  	unsigned int blocksize = MEDIA_INFO(us).blocksize;
>  	unsigned int lba_offset = lba % uzonesize;
>  	unsigned int new_pba_offset;
> +	if (!uzonesize)
> +		return USB_STOR_TRANSPORT_ERROR;
>  	unsigned int zone = lba / uzonesize;
>  
>  	alauda_ensure_map_for_zone(us, zone);
> @@ -923,6 +925,8 @@ static int alauda_read_data(struct us_data *us, unsigned long address,
>  	unsigned int uzonesize = MEDIA_INFO(us).uzonesize;
>  	struct scatterlist *sg;
>  	int result;
> +	if (!uzonesize)
> +		return USB_STOR_TRANSPORT_ERROR;
>  
>  	/*
>  	 * Since we only read in one block at a time, we have to create

This is definitely NOT the right way to fix the bug!

uzonesize is set once, when the device is probed, in 
alauda_init_media().  That is where the check belongs; if uzonesize is 0 
then the function should print a warning and return 
USB_STOR_TRANSPORT_ERROR, because the device is unusable.

It's probably a good idea to check pagesize, blocksize, and zonesize at 
the same time, even though none of them are used for any divisions.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/a0afa88b-f84c-4b45-a265-2e6bcbb84b35%40rowland.harvard.edu.
