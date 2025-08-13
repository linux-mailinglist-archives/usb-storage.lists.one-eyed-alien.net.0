Return-Path: <usb-storage+bncBD64ZMV5YYBRB25U6LCAMGQECB247NQ@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-qv1-xf45.google.com (mail-qv1-xf45.google.com [IPv6:2607:f8b0:4864:20::f45])
	by mail.lfdr.de (Postfix) with ESMTPS id A3091B24B5F
	for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 16:00:13 +0200 (CEST)
Received: by mail-qv1-xf45.google.com with SMTP id 6a1803df08f44-70941c8a17asf16448416d6.3
        for <lists+usb-storage@lfdr.de>; Wed, 13 Aug 2025 07:00:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1755093612; cv=pass;
        d=google.com; s=arc-20240605;
        b=en2vB0LTLYWfKsONJfnzckoLFEsdR3kZAbgQ0+V6IDSNi6+oOqKmMjGl7TdUQbaQwB
         gFticbkpvxkI6WHkKHp6i3XhsYt/Xy5UJS4EvyPiPeenWkqQnM7AN8Xxp2yU7A/vVoX7
         HtT2rJYvr5Sk8+BgkdDArYpApp6cxx8pTByBtTFQ8gyna/bHzERMTYVxfkDroegaMlx/
         r8XA0+lbEUmxfjabM4eTIJqBFhC243kfBdF1dOYImcDNeikQOoMA1sbHhe7b60WCG0wC
         AGbY/ycV3C0t+FMB1lhjY+WPdRZCKA6T66oB1Z/FXLa3rpxZElYdp+BvC/C8TTRTLEE8
         I/6A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=jIZjGkPKNh1y2bfrcTWMY6depc7IXrWO1hUdB+Q0Khc=;
        fh=MAS/Vy9ZMvwF5TvvjL/S4jJ+DOgcE8g2+gY1kxln0XY=;
        b=JLFllN6scM3g28Pq/1R9R6IOY8Gk01bjjHYKg2mJDzLdePofUYSA+U3R3hoKPOa0ER
         KvCnFUf95c1kGnLLLZVa9hL56Cm7pr5AvdvkWJA/jcFWryHg+PH6iYlJYUzXaC96XC2K
         iHTEj8bzu9o/p0lk0RSKlHE9Ey4SPSlgfiQG9UDeRb8Z7GJ5fQY5O9WQJIqib6WqYdb2
         C9BirCE3VT/d0OiarRers92i35qz/X04F28Wb75cCI48xkvrw1RW76MSsZZSpK4EvR4c
         mvcy4rq551+bCaPDoDTJvL1i+n84Z1Wr1GajbrRZNmXDXQB583OUnNw8cvPKJRXHZIGQ
         Ezgw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=KaxrhPjk;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1755093612; x=1755698412; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jIZjGkPKNh1y2bfrcTWMY6depc7IXrWO1hUdB+Q0Khc=;
        b=cZi99Po7g20MgLqADV0+zGEmxA04Gio0d86IFtodlqIIkTSJvruNSmChYdyYyy0QKg
         tkxUiXSema9F+wE3m0HIqcUAquPbD44IW7pTe9oT3CnWmW4cHni4VKAyUkWBxJtqEPmf
         +sDmwnxLMsiAU7pI7P96bs8E0NrN14xHememQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755093612; x=1755698412;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jIZjGkPKNh1y2bfrcTWMY6depc7IXrWO1hUdB+Q0Khc=;
        b=J2BECvpce4t5UeVGx8skxox6kGSkJtfdtSty1xLNcJZN8X0PqSwZ+qUSRv7srjINti
         S8qPw4KcVdDOOc45VHqWNYzekFtHEbLD6sNdkC79oYFMWg57E+NWsMk35lP4K+LKfIhx
         IyDQZ6rEm8Iy2Bd9GAbJkY3bzSXmeym97jvmvH8BSDfB35jr+S8ebsffwNLoOFhOlG1j
         RZl78UUUvMGXcRgAGIx+i/LENGJGF/C/KVECF0qM+8JtGgv8zgjHUppbmM93ihmD2Hkw
         BSgvO+EHjyvVd2k1Hy0/Xr4Bi/ZildWbNeGfj+Y6FQ1N7b3srDNbvIriEEJGzS6ojsXf
         BQEQ==
Sender: usb-storage@lists.one-eyed-alien.net
X-Forwarded-Encrypted: i=2; AJvYcCUgjdNvriz9TStRiELVuMgvLk+kWA1L/hriwJdqJqxowHBTIyRafaoRgN7LYR22cxftwW9isw==@lfdr.de
X-Gm-Message-State: AOJu0Yyi4tMI+lTUX9URs9Xv+RUuUt2IDpePwl7B3P1kVjmkVWbtjD7B
	avJjY/rQjJIZV+vNUyHOpmH1TeK5wO2ImcL2GZSknTp2zgTFs3yt7UjT1VNC5o0jyac=
X-Google-Smtp-Source: AGHT+IEhhWWae29YPnm7YquDlB5EnCH88AVs4nnNUV36RIJ1HqSzWMy/95z9z5Pmox0bOIYiwpMNBA==
X-Received: by 2002:a05:622a:15d4:b0:4ab:723e:fba7 with SMTP id d75a77b69052e-4b0fc738cedmr17985581cf.7.1755093612075;
        Wed, 13 Aug 2025 07:00:12 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net; h=AZMbMZcxf9oGCxsfwpuAifHOATVHC3XlU0kZPwlIF4NPIasfoA==
Received: by 2002:ac8:7d48:0:b0:4aa:fbf6:4242 with SMTP id d75a77b69052e-4b0fae0376dls8061511cf.1.-pod-prod-00-us-canary;
 Wed, 13 Aug 2025 07:00:11 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCX99RNuB2QwMI4Y0VMR2Ln+rxN05ND2D8ehSJf3wQKJyi2UF3Yv4MN2vxtt28eAJ31irz/K+/WZAPDDKA==@lists.one-eyed-alien.net
X-Received: by 2002:ac8:5f8c:0:b0:4b0:64ba:f2dd with SMTP id d75a77b69052e-4b0fe00ca71mr33621461cf.11.1755093610798;
        Wed, 13 Aug 2025 07:00:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1755093610; cv=none;
        d=google.com; s=arc-20240605;
        b=Kigqxv0TobKOO0aXIe7MR/qJ9OWdoj8V/bszudSVhlYzxQ+i0iNiEMJId3aiwtBbup
         l1Qc4BKx7DhQ44lTQMfx3Enav3GIdokOQrco6UJzcWtMvAdoiqMKm8Ftt4ZThJ2P6sLR
         +V+3YmBYSPRko3YtSyt7RirOTpYupeR3XdVUhX6pDvYKvkda9AmcXiLu15bKQazOafbo
         f6TAOE8E/RwU1WE0oGzljma1HySQSg7udMAi9Qt3iviYkQFNXFJsKmOm05tYDhHqV9Ep
         5NC0mPw5tg9dheSd3gyWl9p/SpsEwpgEPwt0Js7onF1PlDUBLtyMsjvDQP/4iTlw2Jb1
         PXAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=14mqwiNGUnagTAT/uPS4H5UVASh274vbb++jcSI7i7I=;
        fh=rDkyEaBc7zkAt1b0ME64x+3Z/sI1y8JHVkdchm+u7r4=;
        b=bnGJW3i/DEMZsaEU7eHXXPAF7yzcRULWKzTcKVdbw2p8qjF9865P6EzK5pt3xAoife
         iE6albOW9xOhlyoURHNGUHegpjjNjtIBvoZ9282GS7qy++c1+jfGoyMsTpi6nUxmS1du
         vaUQFaKW1MLMx8P+2Gm+tFD5fkYOGmxFi+1ZWwk/fSJP2Uyddpynv5Jr5QzaUp2J88VZ
         1bfeEs17nqQqdWJ9kQ6AyfzGZs0vQck/iDMC9mWG3aqOUKnXmLnISTindjZ6/pu75k9L
         BADADvXrdjpNSrtz4DmHhZO9XlN2y9NXwW9KOdmkyjVYltimslVudYrS6HKWzsYlHvVz
         PK8g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@rowland.harvard.edu header.s=google header.b=KaxrhPjk;
       spf=pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
Received: from mail-sor-f41.google.com (mail-sor-f41.google.com. [209.85.220.41])
        by mx.google.com with SMTPS id d75a77b69052e-4b108708a81sor614301cf.2.2025.08.13.07.00.09
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Wed, 13 Aug 2025 07:00:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern@g.harvard.edu designates 209.85.220.41 as permitted sender) client-ip=209.85.220.41;
X-Forwarded-Encrypted: i=1; AJvYcCVefRexCkvGB/3MLVY4PM/VOBrF/oD5wn9HkyqvtivmIiU7RNAUcMW7mfqmUUNMVECbCOutm5QjyQgcLQ==@lists.one-eyed-alien.net
X-Gm-Gg: ASbGncvDZUdgwnDYskRrIKYC4kI8WqiLLDFGSZrZsVvHh+w9UdwhDCNyOgiGEOXgde0
	YClcEJs6qYAvOer0PfQMxZYAMHK3uAOBXrCJl+1d5LcxG1qIuZgh5xy8sUBnkN3DSPpnWOF2+AH
	WRPWHDN+GiNndleBIq1RKG8+14bQhYjbCIElDmTBrzx4kSnZML7XHI2dF+HjoHBf927wm+10WrP
	F5D/LeUfPJXHFVTVntzna9Az00PqqAzAc3cPIkEKrJynpSv2K5DSG/OSdGhIo5y9yp6jkGRzz//
	jgjHuu4UkVHKdqYI5Jr7I0GP1HxK3o4X2kht38bozZKmyp5aFBoeraDBghyEWRVneWT3qaSn1LU
	8ixyNJK5P4riB1+O0Ytw0ZiiOFHoUALtP8/DcJ1UsACryNviQg7o=
X-Received: by 2002:a05:622a:5e16:b0:4b0:769e:42e8 with SMTP id d75a77b69052e-4b0fe2a8b99mr30085081cf.29.1755093609191;
        Wed, 13 Aug 2025 07:00:09 -0700 (PDT)
Received: from rowland.harvard.edu ([140.247.181.15])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b06ea8cec8sm137121811cf.25.2025.08.13.07.00.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 07:00:08 -0700 (PDT)
Date: Wed, 13 Aug 2025 10:00:06 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Thorsten Blum <thorsten.blum@linux.dev>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH 2/3] usb: storage: realtek_cr: Simplify
 residue calculation in rts51x_bulk_transport()
Message-ID: <b0c0ed47-b524-48c8-84c9-7da02f7f7d30@rowland.harvard.edu>
References: <20250813101249.158270-2-thorsten.blum@linux.dev>
 <20250813101249.158270-4-thorsten.blum@linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20250813101249.158270-4-thorsten.blum@linux.dev>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@rowland.harvard.edu header.s=google header.b=KaxrhPjk;
       spf=pass (google.com: domain of stern@g.harvard.edu designates
 209.85.220.41 as permitted sender) smtp.mailfrom=stern@g.harvard.edu;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=rowland.harvard.edu;
       dara=pass header.i=@lists.one-eyed-alien.net
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

On Wed, Aug 13, 2025 at 12:12:49PM +0200, Thorsten Blum wrote:
> Simplify the calculation of 'residue' in rts51x_bulk_transport() and
> avoid unnecessarily reassigning 'residue' to itself.
> 
> Signed-off-by: Thorsten Blum <thorsten.blum@linux.dev>
> ---
>  drivers/usb/storage/realtek_cr.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/realtek_cr.c b/drivers/usb/storage/realtek_cr.c
> index d2c3e3a39693..8a4d7c0f2662 100644
> --- a/drivers/usb/storage/realtek_cr.c
> +++ b/drivers/usb/storage/realtek_cr.c
> @@ -261,8 +261,8 @@ static int rts51x_bulk_transport(struct us_data *us, u8 lun,
>  	 * try to compute the actual residue, based on how much data
>  	 * was really transferred and what the device tells us
>  	 */
> -	if (residue)
> -		residue = residue < buf_len ? residue : buf_len;
> +	if (residue > buf_len)
> +		residue = buf_len;
>  
>  	if (act_len)
>  		*act_len = buf_len - residue;

Acked-by: Alan Stern <stern@rowland.harvard.edu>

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/b0c0ed47-b524-48c8-84c9-7da02f7f7d30%40rowland.harvard.edu.
