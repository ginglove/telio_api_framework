*** Variables ***
${api_los_url}                  http://210.245.51.249:9001
${get_list_user_url}            api/users?page=2
${post_register_user}           /los/users/register
${post_login_user_url}          /los/users/login
${post_change_password_url}     /los/users/change-password
${post_forgot_password_url}     /los/users/reset-password
${post_loan_application_url}    /los/loan-applications
${post_disbursements_url}       /los/disbursements
${post_credit_score_url}        /los/loan-applications/${loan-application-id}/credit-score
${get_signoff_contract_url}     /los/loan-applications/${loanApplicationId}/sign-off-contract
${post_decision_url}            /los/loan-applications/${loan-application-id}/decision
${get_summary_url}              /los/loan-applications/${loanApplicationId}
