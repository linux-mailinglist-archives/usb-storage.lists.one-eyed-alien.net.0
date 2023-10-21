Return-Path: <usb-storage+bncBCUJ7YGL3QFBBGWLZ2UQMGQE4J5XVWI@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-oa1-x47.google.com (mail-oa1-x47.google.com [IPv6:2001:4860:4864:20::47])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAEA7D1C6F
	for <lists+usb-storage@lfdr.de>; Sat, 21 Oct 2023 12:19:08 +0200 (CEST)
Received: by mail-oa1-x47.google.com with SMTP id 586e51a60fabf-1c8c1f34aadsf2203865fac.3
        for <lists+usb-storage@lfdr.de>; Sat, 21 Oct 2023 03:19:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1697883547; cv=pass;
        d=google.com; s=arc-20160816;
        b=z0PVYC/H2w2nIck6Joprqs7fplRu/hpriuJj6pJ3TCdMZ08Nc70Dxy5FwsJhwVzAsN
         X69z7C0MapqS2PmBrzukdzQhyBDWyFeXiYNYLkYJtIXJoNq7FKSNHoqpgTofUfL7ltgV
         gs8rPOzoCbBcLFDXZxMM+CJ5qiSjU41WDsS+WvQSloPqjMGZSYWjsHxyP5/0b0Z3j5i8
         309NamCa84BpwDjQeP+AgX/c3mC5QPLmfigjyTXqOf8BVi3+5YXoX3hAunBB2KAiOP6O
         WUktpyIU80BXs36rzwAE6bCNdQnfOTEOLH3dQyHnLRWh2h6qfphbO7sDZsG8IiWVTQfS
         QVZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=2O7DrABOQxJlnuuQTFinq2gsy4l5sjnIlzQan3RkgHM=;
        fh=t3EXWi4An44bWHv2uIUWbfMUE7Qrvf5xp9ayieGzRpk=;
        b=trQHpLLdTZE7yeHB9//UTEMGwlAl6G2MjqIg8Zaxh8kOEfFNozIFbOfVyPsCx8lpAs
         Mhxu97sQa1xglClBjHa9ieg0uPjyYQYvzEza//8ZDjo1GTnnRXwSgJFZ4FdS0M8JrTlM
         5a94s8un2ryU+bOJrHenImJrMyAwhNINXMny49ymeSuwCIrauxEBpy8piwCW+Ci6ioam
         oZmDdiu+Otjitpqj1/gdLYK5EmXT4y6rcNdlP4/fgcTpiA3uEqbI/iiu2SEAs7uUjxLm
         Y79cQJKy9vv+bP0U2gnvc5gc+egzY7XBtivbfeHfTWJ0YPTH+HvN8nF2xhI61+U/kku9
         S78w==
ARC-Authentication-Results: i=2; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=HUaP7ejO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1697883547; x=1698488347; darn=lfdr.de;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2O7DrABOQxJlnuuQTFinq2gsy4l5sjnIlzQan3RkgHM=;
        b=kQyXrIIVE6IZoDDzJnmWITKdCrkz7tMo+Oiok1I01Ny1o4J18Cxr9uDOT9uqEa6Ivp
         rK4zHqV00syG025smEB31DdGvjVhaBAAJrJ2Q04wyYQpEK8drpBVXy2kpBt8kMQpCf5/
         ER2FZJ8wilTGX6YHRYLbpAxDdbYbwCQogHigU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697883547; x=1698488347;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2O7DrABOQxJlnuuQTFinq2gsy4l5sjnIlzQan3RkgHM=;
        b=ccuUpjJT+GGWV8FtREqc5ROIS0bWAH+TSmiCA71AK/bvQsjMxf1qgLUpe/8SueVYKY
         sE2UPhP3GHdlFe8WWGRpupGvK7WjxUPepK1eRtXA0kcqqd+d0PRfctGJclDGhp4V8tqK
         /fdu6Chnwws6swl2Axuc0b6aOKBrV6hpxOt/FzI9oJsvwkfjFzzfFPYLBT+YwyvwmMx/
         GZsGbGHnkx71nNGyctp/1UpdE5+F1DSKsDMcALVrY4zx+N4nrNhWYD5K4P9SF5FzXv++
         z+Itl7n4Nt4KWte2CCJDeFlL/cg5biDzUoY0gj20L/8cQmys8xJXWnEethLCEoMApKMG
         8k5w==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0Yymw9e54JLUVqtv6DxSScQ4GqRszh9LyLj9ns8jKF2+7T+r1JCY
	0atyGFCcwA7k0K/efV/1DJc+sg==
X-Google-Smtp-Source: AGHT+IGYyBP3qMeh1jbl+atT8DQq9R89loR2ca2qdm0R71sSTqOAaM/kboMwe/4o80F34U6IiJiR5w==
X-Received: by 2002:a05:6871:522b:b0:1ea:7bd1:c495 with SMTP id ht43-20020a056871522b00b001ea7bd1c495mr5176930oac.27.1697883546795;
        Sat, 21 Oct 2023 03:19:06 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6870:6c07:b0:1ea:d76a:4f28 with SMTP id
 na7-20020a0568706c0700b001ead76a4f28ls3327940oab.1.-pod-prod-04-us; Sat, 21
 Oct 2023 03:19:06 -0700 (PDT)
X-Received: by 2002:a05:6870:f604:b0:1e9:f220:ac3b with SMTP id ek4-20020a056870f60400b001e9f220ac3bmr4745272oab.32.1697883545945;
        Sat, 21 Oct 2023 03:19:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1697883545; cv=none;
        d=google.com; s=arc-20160816;
        b=h/lR4R8wNmZvdPCTCESzoE989O6qPwPYYhsfgRAii8+PmqTk8nJHtQL5132Jbjq4hA
         TGJCI48B2B8LsCuYVmYkg738o0brJOI50FRG9LZ/Q0G3xzI6OSw0WhuZ1A/dU68nK7x+
         DJghldBVlcUdy8doKNhxnLIG6NfakNVduiGximo/mCyKuiZx3+4hC+he473O/wG15ekt
         H5UwWtWgXfYF7zNUX5GqbbQVGS2ruH6UXGNmTleOysXcISJOu4HPs9+T3sQDAiDF4JjP
         A6kl1394TjpLjOTyvY0kf63cqK6qNCPOQ4JTN3Ss/UvnRqKCx/Ys+sCIXhE5tFqc1W3p
         taJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=36Bra3uDtj9pXq7F4NnhuLRglDzKILuEJSewO12Aunk=;
        fh=t3EXWi4An44bWHv2uIUWbfMUE7Qrvf5xp9ayieGzRpk=;
        b=UsW7vgz6QJuOBiXeq/8jpTkxmWinUtjenCahX+QEfUfHJRKFmKtP4I1q1Rbm6hupH2
         R0gbESAmD4p5HW0sV7Wia8OmuN7ro+XoEW2ppY9WIcEzB2+aE3WYFc0YBK8GA1ecEIpB
         NPTJSI4UD5EJrll9mfvJK48pvJPhChrwIWjhqBoRUgl6ERhgO+eG+skvYG7eRT3H9i2a
         f2T4C7KA1lgve8u+wnMSMWq4xNYdxYXEIrxYB/Po2XaepvX9jukhDZZOifLUnZDNHKw9
         +lb2r9R5TCRdeoXL8AQyrQoyjCfKmmnFhASXmv59Hh3CT3AHLZo5mhoqaoDk4LcsZn2p
         fKQw==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=HUaP7ejO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from dfw.source.kernel.org (dfw.source.kernel.org. [2604:1380:4641:c500::1])
        by mx.google.com with ESMTPS id tn1-20020a0568718b0100b001dba3c0111esi1122681oab.226.2023.10.21.03.19.05
        for <usb-storage@lists.one-eyed-alien.net>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 03:19:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 2604:1380:4641:c500::1 as permitted sender) client-ip=2604:1380:4641:c500::1;
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id A8D6660A49;
	Sat, 21 Oct 2023 10:19:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EAEFDC433C7;
	Sat, 21 Oct 2023 10:19:04 +0000 (UTC)
Date: Sat, 21 Oct 2023 12:19:02 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Milan Broz <gmazyland@gmail.com>
Cc: linux-usb@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
	linux-scsi@vger.kernel.org, stern@rowland.harvard.edu,
	oneukum@suse.com
Subject: [usb-storage] Re: [PATCH 2/7] usb-storage,uas: make internal quirks
 flags 64bit
Message-ID: <2023102130-catfight-isolated-d786@gregkh>
References: <20231006125445.122380-1-gmazyland@gmail.com>
 <20231016072604.40179-1-gmazyland@gmail.com>
 <20231016072604.40179-3-gmazyland@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20231016072604.40179-3-gmazyland@gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=HUaP7ejO;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates
 2604:1380:4641:c500::1 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Mon, Oct 16, 2023 at 09:25:59AM +0200, Milan Broz wrote:
> Switch internal usb-storage quirk value to 64-bit as quirks currently
> use all 32 bits.
> 
> (Following patches are needed to use driver_info with a 64-bit
> value properly.)

Nit, this sentence isn't needed, I'll go delete it when I apply it, and
patch 1/7 to my tree now, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/2023102130-catfight-isolated-d786%40gregkh.
