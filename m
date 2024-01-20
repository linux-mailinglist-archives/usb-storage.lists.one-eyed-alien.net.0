Return-Path: <usb-storage+bncBD6LRVPZ6YGRB37HWCWQMGQEQ3KYD4A@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf48.google.com (mail-qv1-xf48.google.com [IPv6:2607:f8b0:4864:20::f48])
	by mail.lfdr.de (Postfix) with ESMTPS id 7257B833619
	for <lists+usb-storage@lfdr.de>; Sat, 20 Jan 2024 21:58:24 +0100 (CET)
Received: by mail-qv1-xf48.google.com with SMTP id 6a1803df08f44-68578a962ddsf12525686d6.0
        for <lists+usb-storage@lfdr.de>; Sat, 20 Jan 2024 12:58:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1705784303; cv=pass;
        d=google.com; s=arc-20160816;
        b=sC27ukyfhUYdk8CATnX+SZAYbqDL9gNIKGS+POzI5rUy6Scadwm3OgSp/HsIJvwEMb
         yfSImXAR5M8nFxfoFNiJT9r0Wtp/UJ+eKpfRLCzqLTQGA2WIHSlB2rp0NSIs03Jtq7o/
         8SJkeqRAZeI8YenRQ4plSWQ4OWw4LeFFlCaI6OG8cTNjAgxVWUlzsdWhxhtdgDtIdrn5
         ZKH3xGVv9RgrV8M472u9pNRRh6FcbInL/zHj6Fz3bhKhSfC1b02JXu8fxo3TDZFPCRYa
         ssAQOPI7ZACQ8l20Zjx75G1LK1HoQszBVNPLtlLN0/QwCmoU1pDh6Xl1OedsuhlUsxdT
         Y/Bg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=x0nqKCVI0tk0k73Z8GIE2QiofZ1ul7PPTSChm3OPpmg=;
        fh=3skeA0N/khkeCnse4sEqv3dIbJaJdTU/fa76WWeZde4=;
        b=g7tRYgVraM+JwXm44K70U6sMOl3LMHwxeUwtG4CZ50Pmm3eceoNOOsrC+ANOoQtkDm
         copeAKbd+PPREergizUNySsXUetbot9DaPQRV9hqBFCB1rOIvak8AKf3tj/KfakLkide
         Mr3X60pvwiDCqVMcvLLxAD0Ip2IY3boYiTbN782z6kttAfus4uJXSeLcPNMIymjP+10t
         WzcU+Fd7DaHDXMWW8iUNBvy2SHG/Wzihfda/+glDJfaQsvC+yRaaOsf/UC3l7LcOq2vG
         DWR2D5B20G/+0tMGHUvwyVrowolz/kbjxaPDplhUs3JnKZsHh0cjsc8y/oDREUYaOPXH
         YtWw==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+65a66786@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65a66786@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1705784303; x=1706389103; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x0nqKCVI0tk0k73Z8GIE2QiofZ1ul7PPTSChm3OPpmg=;
        b=LlS0yjh/UZjZ1Vz0VwqZNbkhKDmjksbF1b2VyfgepMGMvP3UFmOKNnxlo12HEfuxsA
         47CuJkHkCS2q1NxRyYbbNcnWZ3UB6wcJOgQYMl/TBOGtSZvLFXRzq37UZlCSXSIOR7J+
         vat2efr4vTi1r0ESodO9VyI456CWJwD2LMcG0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705784303; x=1706389103;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x0nqKCVI0tk0k73Z8GIE2QiofZ1ul7PPTSChm3OPpmg=;
        b=dtNtCPBF6EX+/skU7cOZqf/hW7Ky1esnXmis5FgD2k2nAn7hilYPO+jBySGSJ1sUoM
         mBvnd8GSpl3695QWeeQVMSdaoeJtueFsADGfLA+FyDP9UT34i9qkVxJsm79OCiAUJ3fC
         dswh6/WNA38objMbu3lUjTJef7DiWmGMYkUPQlnQC6irZ3LlMgKAPIjj5uOCm7aT9pbS
         iYEUk5nTLXSIwsjX9Kn3bgaqpiYDGZOClFsH4/CmJXB2N6SvVuCrlpjUszbd7BsGqxCd
         6mlXI3f8nSbQ/6r5FVXYpB2WzCOTSSrPdJP0Ubu+qEH839sJQsxymQDYIfY8PyX2g/K4
         hOIQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yw3VuIT/Lg04zZ2OqlqaJPufjZrwkY3We5GFClWpl8kXoTCflDR
	9BwIWFuXXuCSC9Z7NZBG/QL+6aXQhnWnUq4Sf2wY4F0il2hHXP/iZQuKoUX1ns8=
X-Google-Smtp-Source: AGHT+IEAzV98UeyGh8wQ97ciUkgp9OJPDZN55zI6nUSyqLYKVsun0GLO5WvAIgEWteYrMMqMaERyuQ==
X-Received: by 2002:a05:6214:f64:b0:67f:47fd:79f6 with SMTP id iy4-20020a0562140f6400b0067f47fd79f6mr3370982qvb.95.1705784303268;
        Sat, 20 Jan 2024 12:58:23 -0800 (PST)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a0c:a9db:0:b0:681:7e67:106b with SMTP id c27-20020a0ca9db000000b006817e67106bls401872qvb.2.-pod-prod-04-us;
 Sat, 20 Jan 2024 12:58:22 -0800 (PST)
X-Received: by 2002:a05:6214:2584:b0:685:bd9c:a99a with SMTP id fq4-20020a056214258400b00685bd9ca99amr1960816qvb.35.1705784302502;
        Sat, 20 Jan 2024 12:58:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1705784302; cv=none;
        d=google.com; s=arc-20160816;
        b=jeh1vsG20/ZBEiPOE7XTsg2L1Q/9cU3wmjZUyBhXU+G4sbvj3ZpbbHGFmgLfl79zG3
         IopWosBobf30BsAJvFrdA+MsYXlGV9burlVzJhATXYwC6550BcTNYCP9lyJhsldXWzZx
         p7Y8Eut0TVlXaZZ38vhEvhUFFXJBvd3OMBpMzurMceDeoBAKljro6nPb4ZKGxVNzCBqp
         NBjhLi7AfFgE0ll3tAj1Ki96iKuRcQBSrvX5xmPdD0POgkCy5AZ2zOun3+SSoawuFrlW
         fEAyhGVsnXJ+N2Aaw1Cd3z6OAlEZYGUMoW4V0CveRKqeWToqLsgVcoXiMjCmJm6NDUNH
         WLQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=SpmLA+kJGUJPhENWbu4e7Njmm7zq9avnJf63aP4YKV0=;
        fh=3skeA0N/khkeCnse4sEqv3dIbJaJdTU/fa76WWeZde4=;
        b=KN0qz7j6P8w3lzJxy89JARxAP2+rh6rJ+dI8z+MuxqXVKPxWi1o+CUbb+YSA6y9exD
         Ci0m2gGJ8CtxgAbOqeG0gm2MJgz1E/C1XM9z3uaQRKsQRTomnzftE/qZOsAUCXRYzeLN
         WmuQb261Tx7gMyszOFFh82eWCz/40KqdPOCz/8o0/SNGZNhSMtFRL9tSAoB7Lovd5JZk
         1Vfx2Ota4lL3ckciNIX8R1L0F/f1rHwv9AGfSiBU1s9oLyeU9dbtJvt/hmo0SY9ql7uU
         1dUW+FudxXKOyH+q9hGf+VK31nHx2rzLjeAA7JxYNncEeWsk5uctBLJy4O+etbPBoA1S
         WI/Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+65a66786@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+65a66786@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id h2-20020a0cb4c2000000b006818b5475casi2338845qvf.176.2024.01.20.12.58.22
        for <usb-storage@lists.one-eyed-alien.net>;
        Sat, 20 Jan 2024 12:58:22 -0800 (PST)
Received-SPF: pass (google.com: domain of stern+65a66786@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 83438 invoked by uid 1000); 20 Jan 2024 15:58:21 -0500
Date: Sat, 20 Jan 2024 15:58:21 -0500
From: Alan Stern <stern@rowland.harvard.edu>
To: Sergey Shtylyov <s.shtylyov@omp.ru>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
  linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
  Karina Yankevich <k.yankevich@omp.ru>, lvc-project@linuxtesting.org
Subject: [usb-storage] Re: [PATCH v3] usb: storage: sddr55: fix sloppy typing
 in sddr55_{read|write}_data()
Message-ID: <acfb07e5-949f-4be5-b109-03875cb61f8d@rowland.harvard.edu>
References: <0c219fd9-6b11-9c20-3dec-7dc5beaff379@omp.ru>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <0c219fd9-6b11-9c20-3dec-7dc5beaff379@omp.ru>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+65a66786@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+65a66786@netrider.rowland.org;
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

On Sat, Jan 20, 2024 at 11:15:11PM +0300, Sergey Shtylyov wrote:
> In sddr55_{read|write}_data(), the address variables are needlessly typed
> as *unsigned long* -- which is 32-bit type on the 32-bit arches and 64-bit
> type on the 64-bit arches; those variables' value should fit into just 3
> command bytes and consists of 10-bit block # (or at least the max block #
> seems to be 1023) and 4-/5-bit page # within a block, so 32-bit *unsigned*
> *int* type should be more than enough...
> 
> Found by Linux Verification Center (linuxtesting.org) with the Svace static
> analysis tool.
> 
> Signed-off-by: Karina Yankevich <k.yankevich@omp.ru>
> Signed-off-by: Sergey Shtylyov <s.shtylyov@omp.ru>
> 
> ---

Reviewed-by: Alan Stern <stern@rowland.harvard.edu>

> This patch is against the 'usb-next' branch of Greg KH's usb.git repo...
> 
> Changes in version 3:
> - rewrote the patch subject and description.
> 
> Changes in version 2:
> - compeltely redid the patch.
> 
>  drivers/usb/storage/sddr55.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> Index: usb/drivers/usb/storage/sddr55.c
> ===================================================================
> --- usb.orig/drivers/usb/storage/sddr55.c
> +++ usb/drivers/usb/storage/sddr55.c
> @@ -196,7 +196,7 @@ static int sddr55_read_data(struct us_da
>  	unsigned char *buffer;
>  
>  	unsigned int pba;
> -	unsigned long address;
> +	unsigned int address;
>  
>  	unsigned short pages;
>  	unsigned int len, offset;
> @@ -316,7 +316,7 @@ static int sddr55_write_data(struct us_d
>  
>  	unsigned int pba;
>  	unsigned int new_pba;
> -	unsigned long address;
> +	unsigned int address;
>  
>  	unsigned short pages;
>  	int i;
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/acfb07e5-949f-4be5-b109-03875cb61f8d%40rowland.harvard.edu.
