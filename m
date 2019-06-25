Return-Path: <usb-storage+bncBCWLFYFHWUPBBR5EZHUAKGQEIBKKSBI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-pl1-x648.google.com (mail-pl1-x648.google.com [IPv6:2607:f8b0:4864:20::648])
	by mail.lfdr.de (Postfix) with ESMTPS id 861EE5553C
	for <lists+usb-storage@lfdr.de>; Tue, 25 Jun 2019 18:56:41 +0200 (CEST)
Received: by mail-pl1-x648.google.com with SMTP id 59sf9503472plb.14
        for <lists+usb-storage@lfdr.de>; Tue, 25 Jun 2019 09:56:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1561481800; cv=pass;
        d=google.com; s=arc-20160816;
        b=dHhxGSUqLG5toc+vp+a+PzGTpe2gKOxV0/YgWM/QGuhIAuwUt0+eYuzjccUurFR9fx
         P99F3cXhuTYKLHdxmDmTamRdhCQBQTXJSjQ4JRD+GeATOZh5U8FGmvC6miBimg1svI92
         65MkRap6HyfnUn5j0J7s8xOcJzR4SS2BGZLh5K8+sMVCqwMVlIUjdo1rCtR/HXvEfC+S
         pOUPJZmYkQcCuZFSgPFpuNI9VNLS6auR9hSQilE8bpNoXmZl7tacpXqyBbmhqV+qQ1ee
         B1dWeP5KNLblt+Eaz+cNVdV1p0W5f+1S8GNY8F0Ib6xK9dv5MzQhf+bk/OPCVfTKxavJ
         kjEw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=j1fwXyBlwZV4C0ecR9lI8faJrfvIxPy+dAW+ifG9+8s=;
        b=mKONMW9P5Ui58Yxs8rvfEUgI4BZdeO4EaQOz233yrdq9hA7Hg8uMvuqRHitTQvdRzS
         Gm8KRvPYkZOigNGTWUac9R2mCk9CJvy1/zYAgnyB8G1gK3id/ubyEjoSKblb87ptD3/J
         ycKP3ToY99spmU3hNgbM9hywDytVPzPptl0EOwzkrNBje79XlqHyH/c82AXtw9J/mgP9
         wNj1MmGTwjwUOrQFVFk5DT9HqOaLwoJLb0NiKnaoXJFb+b6tqYnBARcHrxRekF64+1e6
         Q3uERVwP0TzbMOur0qnonrX4n26jvnp5EzMvUXX6CA7M1M9fAeC+YaOLMIeuK393XkOT
         pTgQ==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dvBCz/Uc";
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=j1fwXyBlwZV4C0ecR9lI8faJrfvIxPy+dAW+ifG9+8s=;
        b=ClPNJt+9/bzeXOiTieWsmtcTAmm8msdYCDYpqBE1B7HOzpK54HGOA6ElXPUpc/YBZw
         RDEaQbPVp86nR0BgmRjL0D39LfW11K6d4c1kcnDBW6PQNiTP1y9GZE+7nC38QvKD2lPH
         RcIgXISLJToxq1M2ENxVeL++JfKuOllwNlhhA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=j1fwXyBlwZV4C0ecR9lI8faJrfvIxPy+dAW+ifG9+8s=;
        b=ec24qIoSTGH8Q2gzJCSyfApDP7hY7xsCWLJW+9tSiH170a8+AjAnd1loXIDNtgRuJJ
         q5HIf/NOnTZmSQmUGkBey77D27tTCksXwNzMeW/J6zx3hKKqsNKhfSgukAUKw9lshdei
         DqbiG66BxBCvYUjuR6E1Vn5jcpte7TSKZn5EnHJeV3XiyJqojzpwCsgXqdnG0fBP+WJ4
         7arfJswYe9Py31Gr6UbbWymUe85XqKgPLKmYvX59lKDC2HIXEKkaT3yy87wHuuN171R7
         +UHfxhin2pWy77zdsD15M6bYGortxQlVyIUaUxHGwtqW6hsdetrJJuFnDgJCbnWQIAzy
         4Wbg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: APjAAAXoRqR14bnMvzDdnMX+U85kjP3S2Jo+ueLuqkMiOtblwx+cSEEi
	g+oSbYdmkz6Fknpn6SGSfofhDg==
X-Google-Smtp-Source: APXvYqyAUoFeF/1j1dFazIiCyut1eLAE8MsdG9EZwkBgxzT/Z8RH+GINUS7Bcu1RNVIsHIdQtGvc4g==
X-Received: by 2002:a17:902:8d92:: with SMTP id v18mr133432429plo.211.1561481800211;
        Tue, 25 Jun 2019 09:56:40 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a63:da4b:: with SMTP id l11ls1629055pgj.2.gmail; Tue, 25 Jun
 2019 09:56:39 -0700 (PDT)
X-Received: by 2002:a63:d006:: with SMTP id z6mr41115725pgf.364.1561481799478;
        Tue, 25 Jun 2019 09:56:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1561481799; cv=none;
        d=google.com; s=arc-20160816;
        b=mgqisULBzReUD85TWsP9py2cXWw8V+byeZ2s9exPcD192d//HbR9EEAz5CEsvOaNne
         4JsH7hsfJ8GgI3gclSQFMftjAdMUxao7N3GC41x+9WsaiaGiBkwxYVZPch23gb8sXuqp
         3NmcCChWWd8IAi2tiClgkVA/3huFWDHJ+y8QhynKLAfMNCZHE/8zkCi3wavOiaVM8c+Z
         l9Tb6fAVQsIP5Tti4x5z0c0QDLRWNo+QwqsjpyXagHv97sh7VmV6Av5L74vIcla9PiOt
         ZVi5hCBsvYX4JOP7/QmM3kGeW25kO7L1gNu9GYSOsBWpPiBZdfWp8mv5vjQ2DEEfaNs4
         Rr2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bK83zTa34d/KXkbi82In/9/Xz+oQsr3IYBuIQqRd50o=;
        b=riKgHGyaHzxSAWGHmO7lHToFEIKwaCYcr4SNdNyKpqcgPV50FDB4PhIwJ7b0K7RtQ5
         tgoSX2WH8VyXFV4BRyNF1PoVLUxTyOaB7KxXW081aoQAX0AP7xpO+j09oCz30xRdnwEq
         Pq2hgAoHofpyZhYYWDxnzEfgu8C+He/DaH8rZbTiDeMG3m8Mi1kQbmDKOY87Jt3JSa4D
         IpYLiBEtwYhYiwUpQi/VkZ9sVXQZu/btyedtB9ojaxLWTSqZKrxyAgmne4mOFSOvn7wC
         5Hn74ct8H+8HMAWGfCXu4RcPlkA389wXo7j4Z7hkeWYmY+CMPAqUoUOEXs/ZrcpY4+fb
         NljA==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="dvBCz/Uc";
       spf=pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-sor-f65.google.com (mail-sor-f65.google.com. [209.85.220.65])
        by mx.google.com with SMTPS id l16sor2499406pjb.0.2019.06.25.09.56.39
        for <usb-storage@lists.one-eyed-alien.net>
        (Google Transport Security);
        Tue, 25 Jun 2019 09:56:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as permitted sender) client-ip=209.85.220.65;
X-Received: by 2002:a17:90a:2163:: with SMTP id a90mr31515981pje.3.1561481799115;
        Tue, 25 Jun 2019 09:56:39 -0700 (PDT)
Received: from continental ([177.132.134.92])
        by smtp.gmail.com with ESMTPSA id g2sm14134483pgi.92.2019.06.25.09.56.35
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 25 Jun 2019 09:56:37 -0700 (PDT)
Date: Tue, 25 Jun 2019 13:57:11 -0300
From: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
To: linux-kernel@vger.kernel.org
Cc: Alan Stern <stern@rowland.harvard.edu>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"open list:USB MASS STORAGE DRIVER" <linux-usb@vger.kernel.org>,
	"open list:USB MASS STORAGE DRIVER" <usb-storage@lists.one-eyed-alien.net>
Subject: [usb-storage] Re: [PATCH v2] usb: storage: scsiglue: Do not skip VPD
 if try_vpd_pages is set
Message-ID: <20190625165709.GA31932@continental>
References: <20190618224454.16595-1-marcos.souza.org@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190618224454.16595-1-marcos.souza.org@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Original-Sender: marcos.souza.org@gmail.com
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="dvBCz/Uc";       spf=pass
 (google.com: domain of marcos.souza.org@gmail.com designates 209.85.220.65 as
 permitted sender) smtp.mailfrom=marcos.souza.org@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

humble ping :)

On Tue, Jun 18, 2019 at 07:44:54PM -0300, Marcos Paulo de Souza wrote:
> If BLIST_TRY_VPD_PAGES is set for a device, even for an USB, it should
> be honored, so only set skip_vpd_pages is try_vpd_pages is not set.
> 
> Signed-off-by: Marcos Paulo de Souza <marcos.souza.org@gmail.com>
> Acked-by: Alan Stern <stern@rowland.harvard.edu>
> ---
> 
>  Changes from v1:
>  changed the check of try_vpd_pages from:
>  	sdev->try_vpd_pages == 0;
>  to:
>  	!sdev->try_vpd_pages;
>  (as suggested by Alan Stern)
> 
>  drivers/usb/storage/scsiglue.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/usb/storage/scsiglue.c b/drivers/usb/storage/scsiglue.c
> index 59190d88fa9f..30790240aec6 100644
> --- a/drivers/usb/storage/scsiglue.c
> +++ b/drivers/usb/storage/scsiglue.c
> @@ -195,8 +195,11 @@ static int slave_configure(struct scsi_device *sdev)
>  		 */
>  		sdev->skip_ms_page_8 = 1;
>  
> -		/* Some devices don't handle VPD pages correctly */
> -		sdev->skip_vpd_pages = 1;
> +		/*
> +		 * Some devices don't handle VPD pages correctly, so skip vpd
> +		 * pages if not forced by SCSI layer.
> +		 */
> +		sdev->skip_vpd_pages = !sdev->try_vpd_pages;
>  
>  		/* Do not attempt to use REPORT SUPPORTED OPERATION CODES */
>  		sdev->no_report_opcodes = 1;
> -- 
> 2.21.0
> 

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/20190625165709.GA31932%40continental.
