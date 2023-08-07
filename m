Return-Path: <usb-storage+bncBD6LRVPZ6YGRBPHJYOTAMGQEDRWYQ4Q@lists.one-eyed-alien.net>
X-Original-To: lists+usb-storage@lfdr.de
Delivered-To: lists+usb-storage@lfdr.de
Received: from mail-ed1-x545.google.com (mail-ed1-x545.google.com [IPv6:2a00:1450:4864:20::545])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F779772636
	for <lists+usb-storage@lfdr.de>; Mon,  7 Aug 2023 15:42:21 +0200 (CEST)
Received: by mail-ed1-x545.google.com with SMTP id 4fb4d7f45d1cf-51866148986sf2998457a12.3
        for <lists+usb-storage@lfdr.de>; Mon, 07 Aug 2023 06:42:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1691415740; cv=pass;
        d=google.com; s=arc-20160816;
        b=oA6QSjRHUloIrfZKHqINHF6JNCnBsjzKU6WANihsdeuWCKXdyuGQ9ocAJMtwc1aByO
         QeCr4CGg/pQ7G1i16E7AmXeDvyqIVXEVqKRh0D7plAmqaLB6zWgcSV78QV6hftSqOi7x
         TowTS87ECY10gGGicQZjrNDvGAqi/m2s+bCdamSetagaxRjtw6W8aZfnkbrSincnFVtq
         vsJB/QS3ck9GAZkiSxCgYILXOS3xdwnVXSuccqmMJjZ6CiJhVJTfLpgK2NQWimM/K6CD
         KEi5naZGvFORRjkgxYDm9BjDZldui1jORJOpcGSTeYa7zywh1uyw4FFvaVZ8v92J1JhP
         rCsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=5A8OU6D+znecdmhMGLs8AHUbfwgj7xp+zVuYK9On0nY=;
        fh=OdGOJLNO5HGDkTcZyfNaq1DHiSly0a1LuIqSISxUbDQ=;
        b=rPXiKkOI9jjOwWIj5mRkJBxIb1RIE9akyeDkhZieGGtidJ9OUL/q198+Li4MX4KubK
         etYn0Z38Rq9hhQDVxRlDAjBHGK1o+bhGudWXN3GFYVuJFOKpJp56mejRG2SwBCn4Air9
         PVkKloHAtFXuAnT1GlDAjCweace1aaEAQ/6x7BtR3Ql7yLGx6ZqCGfS6jSMY+cXajYXT
         QGvRVG0tPTE0F96d8gIrUqrn2sTArs9+snRFwY0QBIiZJHuKKZEThQsTpmHED4mijwnA
         E+/ndfBqOQuOsC574r1/x6rUSBJj1LYQvWLMaMDe1wdnSCxuMSXCE7rpCm6VlJbhrHBR
         ADbg==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of stern+64c0f95a@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+64c0f95a@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lists.one-eyed-alien.net; s=google; t=1691415740; x=1692020540;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:x-original-authentication-results
         :x-original-sender:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5A8OU6D+znecdmhMGLs8AHUbfwgj7xp+zVuYK9On0nY=;
        b=MKbf+eF41A3ssXvbr6/LRJlItJUxkXlBW8B/z2UvqhEQlkHg+k/QcgKmeB1FjDMZEQ
         lsbK8XJ8mbCh2m1xN62wTcIsPLpG0nTHQgAUf9DDYbeyBUd50yCfjUWM5nYLJkZ0v+ar
         NwzAlp4AownWcBwAVqZnnz6Cnk5sljlNDXmjk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691415740; x=1692020540;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:x-beenthere:x-gm-message-state:sender:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5A8OU6D+znecdmhMGLs8AHUbfwgj7xp+zVuYK9On0nY=;
        b=D1JZbZaIfiEHelIAZ8zC0KiBWRNSomOFZJI9urmsbpYSaA5oM78GZ6YRmQtXgewDji
         uW0cqAdxULIR8x1oxOp6+N3oheQ28yx09bG31liRw5SD2P6ZzNttFTzMJSWL75Z0sHUA
         JgTWhMoaNRZM3HJNOf374LTe4u4JkodCdMS1cNLT9WcpZEfOWXq+/UKmbNC0hxAVKRIK
         hxmG99trNMQALopiUrvBZ8MHMNMRcG6uazuGw4fYb/5ItzTIs+MJhe/OBNuDqFqRmhDa
         TTvqd7YM1p/rQaZvxlmiwQRepAr8ufNteeN38HYFKQSVRhmy2hOneyWrMZ5a2pWnKIlo
         hgRg==
Sender: usb-storage@lists.one-eyed-alien.net
X-Gm-Message-State: AOJu0YxPNoNe5QVl1LE3jMmJr6OCroaG2Iu3X7spGaaIiHf/iWDy396o
	oimUWfP5Kbks72ma9xVa2KtpMQ==
X-Google-Smtp-Source: AGHT+IE7Wp0391FpHflMKW9MflNxGFOyi8cjmM4kdPRfEa3sjUk3IDKng6x0VoLcEV866CGlcimPoA==
X-Received: by 2002:a05:6402:74f:b0:522:23e8:2c69 with SMTP id p15-20020a056402074f00b0052223e82c69mr7160031edy.27.1691415740606;
        Mon, 07 Aug 2023 06:42:20 -0700 (PDT)
X-BeenThere: usb-storage@lists.one-eyed-alien.net
Received: by 2002:a05:6402:1659:b0:521:7727:30c0 with SMTP id
 s25-20020a056402165900b00521772730c0ls1643186edx.1.-pod-prod-02-eu; Mon, 07
 Aug 2023 06:42:19 -0700 (PDT)
X-Received: by 2002:a17:906:8462:b0:997:deb1:ff6a with SMTP id hx2-20020a170906846200b00997deb1ff6amr7860449ejc.22.1691415738930;
        Mon, 07 Aug 2023 06:42:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1691415738; cv=none;
        d=google.com; s=arc-20160816;
        b=SsQQ0Z/V3T2mGL1c7oHD67x07O8AvuLxzqowKlmAB/jTFVx8oe6/Pz8USCQ2hdBEZO
         w6PY9PruqSHGtclyXGB1Nu8VI32PXeYRy4hK1nVmWivYsV2udApQ6H+JCO387WDnVuUf
         ZTr168ZzGGA+XLmadi0IDeDpK5MR5d/JxnMb7kvgmT67IvLjHoqP6QAsHK8aXDavlzpL
         Pz8IK6W2ALLIxKQM8/FhrBX9FwxU/nLPwk5rFBs1Ai8rPOUlHWSzcwWANti070qfBLpR
         LxfA+4WQ87Cc8iUykHbKvSTTj5kiFudIHBnl8PtXUbQ9PsigVVyAtHA1BvxDux1mJm3O
         GNcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=d9x5oRsyTX8E34GbG4jBTXxAIv82zNAVP+MraTKz1uI=;
        fh=OdGOJLNO5HGDkTcZyfNaq1DHiSly0a1LuIqSISxUbDQ=;
        b=wa6XwXxfMSvnnAdkDZZV8rjGuv4Rdck58x+NknKgT8S1XRX6W0LeA8Pdmr/09PjkA7
         0tBWk4lk3EhleiOnRYXoKlJ/1uWuXJgd9dLfnEP4joBZBSjDQst3BmPjjFkliCWLqwRo
         ZdPaVtVu8wlxUyUvnoRrkrgcNCz6HYdbkZLXvDc/TCYyrvqjtN871tq8WuCP5q0Q9NKr
         Tt1ls9W1uA+xHDPmRjNLusy+cCFb+R5PT8Y4dQCu2R/e/0pgUKOrsoHTXmjTwnX4nM6u
         cvcX45HnikJDB092uiIe3wxfNnxaJ1JfRC5//mEsiEYVog8lvT4M36/NgMqbPQu1rb17
         00yA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of stern+64c0f95a@netrider.rowland.org designates 192.131.102.5 as permitted sender) smtp.mailfrom=stern+64c0f95a@netrider.rowland.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=harvard.edu
Received: from netrider.rowland.org (netrider.rowland.org. [192.131.102.5])
        by mx.google.com with SMTP id c10-20020a1709060fca00b00986b1c0b4d2si4525099ejk.595.2023.08.07.06.42.18
        for <usb-storage@lists.one-eyed-alien.net>;
        Mon, 07 Aug 2023 06:42:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of stern+64c0f95a@netrider.rowland.org designates 192.131.102.5 as permitted sender) client-ip=192.131.102.5;
Received: (qmail 124021 invoked by uid 1000); 7 Aug 2023 09:42:17 -0400
Date: Mon, 7 Aug 2023 09:42:17 -0400
From: Alan Stern <stern@rowland.harvard.edu>
To: Piyush Mehta <piyush.mehta@amd.com>
Cc: gregkh@linuxfoundation.org, michal.simek@amd.com,
  siva.durga.prasad.paladugu@amd.com, radhey.shyam.pandey@amd.com,
  git@amd.com, linux-usb@vger.kernel.org,
  usb-storage@lists.one-eyed-alien.net, linux-kernel@vger.kernel.org
Subject: [usb-storage] Re: [PATCH] uas: Add US_FL_NO_ATA_1X for linux tcm_usb_gadget
Message-ID: <3ff288b4-760c-4c8e-a8c2-a6cb4a1447ca@rowland.harvard.edu>
References: <20230807122025.2818062-1-piyush.mehta@amd.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20230807122025.2818062-1-piyush.mehta@amd.com>
X-Original-Sender: stern@rowland.harvard.edu
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of stern+64c0f95a@netrider.rowland.org designates 192.131.102.5 as
 permitted sender) smtp.mailfrom=stern+64c0f95a@netrider.rowland.org;
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

On Mon, Aug 07, 2023 at 05:50:25PM +0530, Piyush Mehta wrote:
> The linux kernel's tcm_usb_gadget requires the US_FL_NO_ATA_1X quirk.
> It does not respond to the ATA_12 family of commands and hangs. The host

Are you certain of that?  Doesn't this depend on the underlying device 
that the gadget is attached to?

> prevents the issuing of ATA_12 commands to the TCM module, by introducing
> this quirk, the host is permitted to proceed with other operations.

Rather than changing just one host (the Linux one) while leaving all 
other hosts to malfunction, why not fix the gadget instead?  Change it 
so that it _doesn't_ hang when it gets an ATA_12 command but returns an 
appropriate error status.  That way the gadget will work with all hosts.

Alan Stern

-- 
You received this message because you are subscribed to the Google Groups "USB Mass Storage on Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to usb-storage+unsubscribe@lists.one-eyed-alien.net.
To view this discussion on the web visit https://groups.google.com/a/lists.one-eyed-alien.net/d/msgid/usb-storage/3ff288b4-760c-4c8e-a8c2-a6cb4a1447ca%40rowland.harvard.edu.
